//+------------------------------------------------------------------+
//|                                                   MarketInfo.mq4 |
//|                        Copyright 2018, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
      //MarketInfo permite obtener la informacion de un par
      //El primer parametro permite indicar que par se va obtener la informacion, al indicarle NULL se indica que se va obtener informacion del par que muestra al aplicar el script
      //El segundo parametro esxite algunas opciones de informacion las cuales inician con MODE
      double propiedad = 0;
      propiedad = MarketInfo(NULL, MODE_ASK); //Obteniendo el precio ask
      Comment("ASK=",propiedad, "\n");
      
      //Recorriendo las propiedades      
      string informacion = "";
      string mode;
      short numDigitos = MarketInfo(NULL, MODE_DIGITS); //Digitos que se manajan
      for(short opcion=1; opcion <= 33; opcion++) {
            propiedad = MarketInfo(NULL, opcion); //Obteniendo el precio ask
            //Convertiendo double a string DoubleToString(propiedad)
            //Convirtiendo de Enum a String EnumToString(ENUM_MARKETINFO(opcion))
            mode = StringSubstr(EnumToString(ENUM_MARKETINFO(opcion)), 5, NULL);
            informacion +=mode +  " = " + DoubleToString(propiedad, numDigitos) +  "\n";
      }
      //Comment limpia totalmente el texto para volver a imprimir;
      Comment(informacion);
   
  }
//+------------------------------------------------------------------+
