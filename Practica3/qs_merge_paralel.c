#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <pthread.h>
#include <time.h>

#define NN 512000000
#define MAX_INT ((int)((unsigned int)(-1)>>1)) //Declaracion del numero int mas grande posible

int valors[NN+1];
int valors2[NN+1];

//Struct para los argumentos del QuickSort
struct qs_args{
  int *val;
  int ne;
};

//Struct para los argumentos del Merge
struct merge2_args{
  int *val;
  int n;
  int *vo;
};

//Funcion QuickSort
void qs(int *val, int ne){
  int i,f,j;
  int pivot,vtmp,vfi;
  pivot = val[0];
  i = 1;
  f = ne-1;
  vtmp = val[i];

  while (i <= f){
    if (vtmp < pivot){
      val[i-1] = vtmp;
      i ++;
      vtmp = val[i];
    }
    else{
      vfi = val[f];
      val[f] = vtmp;
      f --;
      vtmp = vfi;
    }
  }

  val[i-1] = pivot;
  if (f>1) qs(val,f);
  if (i < ne-1) qs(&val[i],ne-f-1);
}

//Funcion QuickSort con threads
void *qs_thread(void *qs_args){
  struct qs_args *args = qs_args;
  int *val = args->val;
  int ne = args->ne;
  int i,f,j;
  int pivot,vtmp,vfi;

  pivot = val[0];
  i = 1;
  f = ne-1;
  vtmp = val[i];

  while (i <= f){
    if (vtmp < pivot){
      val[i-1] = vtmp;
      i++;
      vtmp = val[i];
    }
    else{
      vfi = val[f];
      val[f] = vtmp;
      f--;
      vtmp = vfi;
    }
  }

  val[i-1] = pivot;
  if (f>1) qs(val,f);
  if (i < ne-1) qs(&val[i],ne-f-1);
}

//Funcion Merge con threads
void *merge2_thread(void *merge2_args){
  struct merge2_args *args = merge2_args;
  int *val = args->val;
  int n = args->n;
  int *vo = args->vo;
  int vtmp;
  int i,j,posi,posj;

  posi = 0;
  posj = (n/2);

  for (i=0;i<n;i++){
    if (((posi < n/2) && (val[posi] <= val[posj])) || (posj >= n)){
      vo[i] = val[posi++];
    }
    else if (posj < n){
      vo[i] = val[posj++];
    }
  }
}

//Funcion Merge
void merge2(int* val, int n,int *vo){
  int vtmp;
  int i,j,posi,posj;
  posi = 0;
  posj = (n/2);

  for (i=0;i<n;i++){
    if (((posi < n/2) && (val[posi] <= val[posj])) || (posj >= n)){
      vo[i] = val[posi++];
    }
    else if (posj < n){
      vo[i] = val[posj++];
    }
  }
}

int main(int nargs,char* args[]){

  int ndades,i,j,m,parts;
  int *vin,*vout,*vtmp;
  long long sum=0;
  //clock_t clock0, clock1, clock2, clock3, clock4, clock5;

  assert(nargs == 3); //Comprobar que hay 3 parametros de entrada al compilar

  ndades = atoi(args[1]); //Almacenar el tamano del vector
  assert(ndades <= NN); //Comprobar que el vector sea mas pequeno que NN(512000000)

  parts = atoi(args[2]); //Almacenar la cantidad de threads
  if (parts < 2) assert("Han d'haver dues parts com a minim" == 0); //Minimo 2 threads
  if (ndades % parts) assert("N ha de ser divisible per parts" == 0); //Que sea divisible para repartir bien la cantidad del vector en los threads

  pthread_t threads[parts]; //Declarar el thread
  struct qs_args args_qs[parts]; //Declarar el struct de los argumentos del QuickSort
  struct merge2_args args_merge2[parts]; //Declarar el struct de los argumentos del Merge

  //clock0 = clock();

  for(i=0;i<ndades;i++) valors[i]=rand()%MAX_INT; //Poblar el vector con numeros aleatorios

  //clock1 = clock();

  //Bucle para crear threads del QuickSort
  for (i=0;i<parts;i++){
    //printf("de %d a %d\n",i*ndades/parts,(i+1)*(ndades/parts));
    args_qs[i].val = &valors[i*(ndades/parts)]; 
    args_qs[i].ne = ndades/parts;
    pthread_create(&threads[i], NULL, qs_thread, &args_qs[i]); //Crear los threads
  }

  //Bucle de espera de finalizacion de todos los threads 
  for(i = 0; i < parts; i++){
    pthread_join(threads[i], NULL);
  }

  //clock2 = clock();

  vin = valors;
  vout = valors2;

  //Bucle para crear threads del Merge
  for (m = 2*ndades/parts; m <= ndades; m *= 2){
    j=0;
    for (i = 0; i < ndades; i += m){
      args_merge2[j].val = &vin[i];
      args_merge2[j].n = m;
      args_merge2[j].vo = &vout[i];
      pthread_create(&threads[j], NULL, merge2_thread, &args_merge2[j]);
      j++;
    }
    //Bucle de espera de finalizacion de todos los threads 
    for (i = 0; i < j; i++){
      pthread_join(threads[i], NULL);
    }
    vtmp=vin;
    vin=vout;
    vout=vtmp;
  }

  //clock3 = clock();

  for (i=1;i<ndades;i++) assert(vin[i-1]<=vin[i]); //Comprobar que el vector esta ordenado

  //clock4 = clock();

  for (i=0;i<ndades;i+=100)
    sum += vin[i]; //Sumatorio de todos los elementos del vector

  //clock5 = clock();

  printf("validacio %lld \n",sum);

  /*printf("\nTiempo bucle 1: %.5f\n", (double)(clock1-clock0)/CLOCKS_PER_SEC);
  printf("Tiempo bucle 2: %.5f\n", (double)(clock2-clock1)/CLOCKS_PER_SEC);
  printf("Tiempo bucle 3: %.5f\n", (double)(clock3-clock2)/CLOCKS_PER_SEC);
  printf("Tiempo bucle 4: %.5f\n", (double)(clock4-clock3)/CLOCKS_PER_SEC);
  printf("Tiempo bucle 5: %.5f\n", (double)(clock5-clock4)/CLOCKS_PER_SEC);
  printf("Tiempo bucles Sort: %.5f\n", (double)((clock2-clock1)+(clock3-clock2))/CLOCKS_PER_SEC);*/
}