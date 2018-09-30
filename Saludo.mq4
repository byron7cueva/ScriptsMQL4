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
   string mensaje = "Hola";
   string nombre;
   nombre = "Byron";
   //Imprimir un mensaje en grafico
   Comment(mensaje + " " + nombre);
   //imprintAlert();
  }
//+------------------------------------------------------------------+
void imprintAlert(){
   //Imprimir una alerta en pantalla
   Alert("Hola");
}
