//+------------------------------------------------------------------+
//|                                                       Saludo.mq4 |
//|                                     Copyright 2018, byron7cueva. |
//|                                            byron7cueva@gmail.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, byron7cueva."
#property link      "byron7cueva@gmail.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   //Declarando variables
   int numero1 = 1;
   int numero2 = 2;
   string mensaje = "Hola";
   string nombre;
   nombre = "Byron";
   //Imprimir un mensaje en grafico
   Comment(mensaje + " " + nombre + (numero1 + numero2));
   //imprintAlert();
  }

/*
   Este es un ejemplo imprimiendo una aletrta en pantalla
*/
void imprintAlert(){
   //Imprimir una alerta en pantalla
   Alert("Hola");
}
