package practicacompi1s2;
import java.io.*;
import java_cup.runtime.Symbol;
%%

%cupsym Caracter
%class Configuracion
%public
%full
%char
%line
%cup
%ignorecase
%unicode
Dg=[0-9]
blanco=[" "]
linea=[\n]
retorno=[\r]
tab=[\t]
%{
public String guardar;
%}

%%
{blanco}                     {/*Se ingnora*/}
{linea}                      {/*Se ingnora*/}
{retorno}                    {/*Se ingnora*/}
{tab}                        {/*Se ingnora*/}
"."                          {return new Symbol(Caracter.Tk_Deci,yychar,yyline,new String(yytext()));}
","                          {return new Symbol(Caracter.Tk_Coma,yychar,yyline,new String(yytext()));}
"+"                          {return new Symbol(Caracter.Tk_Suma,yychar,yyline,new String(yytext()));}
"-"                          {return new Symbol(Caracter.Tk_Resta,yychar,yyline,new String(yytext()));}
"/"                          {return new Symbol(Caracter.Tk_Diag,yychar,yyline,new String(yytext()));}
"*"                          {return new Symbol(Caracter.Tk_Por,yychar,yyline,new String(yytext()));}
"("                         {return new Symbol(Caracter.Tk_Abrir,yychar,yyline,new String(yytext()));}
")"                          {return new Symbol(Caracter.Tk_Cerrar,yychar,yyline,new String(yytext()));}
"Azul"                       {return new Symbol(Caracter.Tk_Azul,yychar,yyline,new String(yytext()));}
"Rojo"                       {return new Symbol(Caracter.Tk_Rojo,yychar,yyline,new String(yytext()));}
"Verde"                      {return new Symbol(Caracter.Tk_Verde,yychar,yyline,new String(yytext()));}
"Amarillo"                   {return new Symbol(Caracter.Tk_Amarillo,yychar,yyline,new String(yytext()));}
"Naranja"                    {return new Symbol(Caracter.Tk_Naranja,yychar,yyline,new String(yytext()));}
"Morado"                     {return new Symbol(Caracter.Tk_Morado,yychar,yyline,new String(yytext()));}
"Cafe"                       {return new Symbol(Caracter.Tk_Cafe,yychar,yyline,new String(yytext()));}
"Negro"                      {return new Symbol(Caracter.Tk_Negro,yychar,yyline,new String(yytext()));}
"Graficar"                   {return new Symbol(Caracter.Tk_Graf,yychar,yyline,new String(yytext()));}
"Circulo"                     {return new Symbol(Caracter.Tk_Cir,yychar,yyline,new String(yytext()));}
"Cuadrado"                   {return new Symbol(Caracter.Tk_Cua,yychar,yyline,new String(yytext()));}
"Linea"                      {return new Symbol(Caracter.Tk_Line,yychar,yyline,new String(yytext()));}
"Rectangulo"                 {return new Symbol(Caracter.Tk_Rec,yychar,yyline,new String(yytext()));}
"Poligono"                   {return new Symbol(Caracter.Tk_Pol,yychar,yyline,new String(yytext()));}
({Dg})*                      {return new Symbol(Caracter.Tk_Puntos,yychar,yyline,new String(yytext()));}
.                            { return new Symbol(Caracter.Tk_Error,yychar,yyline,new String(yytext()));}
