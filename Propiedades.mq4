//+------------------------------------------------------------------+
//|                                                  Propiedades.mq4 |
//|                        Copyright 2018, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//Indicando la necesidad de mostrar inputs para solicitar datos al usuario
#property script_show_inputs
//Indicando la descripcion en el tag about
#property description "Este es un escript de prueba, solo necesitas asignar una valor a la variable solicitada"
//Indica una advertencia de que si desea correr el scritpt en el grafico
//#property  script_show_confirm


//Variable para solicitud de informacion al usuario
//Input para solicitar texto, Al lado del input es el texto que se pone en la pantalla
input string comentario = "Pon algo aqui"; //Comentario
//Variable tipo boobleano
input bool tieneColor = false;
//Entero mas pequeno
//Input para solicitar un numero entero
input int numeroEntero = 0; //Numero entero
input short numeroPequeno = 123; //Numero pequeno
//Input para solicitar un numero flotante
input float numeroDecimal = 1.0000;
//Inpput para solicitar un numero double
input double precio = 1.000;
//Solicitando un color, todos los colores inicia en clr
input color colorFavorito = clrBlueViolet;
//Solicitando fecha
input datetime fechaActual;
//Solicitando un entero grande
input long enteroGrande = 1;
//Maneja un numero mas grande que long pero sin simbolo
input ulong dobleGrande = 2;

string comentario2 = "Segundo comentario";
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   //Las variables que se encuentran como input no se puede cambiar su valor
   string texto = "hola";
   texto = "buenos dias";
   char letra = "a";
   uchar texto = "Prueba texto";
   ushort numero = 10; //Numero mayor que short sin signo
   uint numeroEnteroGrande = 20; //Numero entero mas grande que int sin digno
   //Imprimienfo comentario
   Comment(comentario);
  }
//+------------------------------------------------------------------+
