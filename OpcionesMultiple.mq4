//+------------------------------------------------------------------+
//|                                                  Operaciones.mq4 |
//|                        Copyright 2018, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property script_show_inputs

//extern es lo mismo que input, pero este si permite modificar el valor de la variable
extern int a = 10; //Primer numero

input int b = 2; //Segundo numero

//Lista de datos
enum TipoOperacion {
   Suma,
   Resta,
   Multiplicacion,
   Division,
   Aumentando,
   Disminuyendo,
   Residuo,
   PorSiMismo, //Multipicar por si
   SumaAsiMismo, //Sumar asi mismo
};

input TipoOperacion operacion = 0; //Operacion
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   //Siempre es necesario inicializar los valores de las varibles
   //Ya que mt4 puede tratar de ocupar ese espacio de memoria de una variable declarada en otro programa
   //De esa manera ya se reserva la variable correctamente
   float c = 0;
   
   switch(operacion) {
      case 0:
         c = a + b;
         Comment(a, " + ",b, " = ", c);
         break;
      case 1:
         c = a - b;
         Comment(a, " - ",b, " = ", c);
       break;
       case 2:
         c = a * b;
         Comment(a, " * ",b, " = ", c);
         break;
       case 3:
         c = a / b;
         Comment(a, " / ",b, " = ", c);
       break;  
       case 4:
         a++;
         Comment("Aumentando el valor de primer numero en 1 ", a);
        break;
        case 5:
         a--;
         Comment("Disminuyendo el valor de primer numero en 1 ", a);
        break;
        case 6:
            c = a%b;
            Comment("El residuo de ", a, " con ", b, " es ", c);
        break;
        case 7:
            c = a;
            a  *= a;
            Comment(c," multiplicado por si mismo es ", a);
        break;
        case 8:
            c = a;
            a += a;
            Comment(c," sumado asi mismo es ", a);
        break;
       default:
         Comment("No hay esa opcion");
       break;
   }
   
  }
//+------------------------------------------------------------------+
