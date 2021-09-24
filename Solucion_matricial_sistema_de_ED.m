%%Solucion sistema de ecuaciones diferenciales
clc
clear
close all

syms s M1 M2 M3 K1 K2 K3 B1 B2 B3 fa vs


%%PARCIAL 1%%
%%Ejercicios:
%%#1
%%A = [-K2-K1-B1*s- B2*s - M1*(s^2),K2+ B2*s,0,0;K2+B2*s,-K3-B3*s-K2-B2*s-M2*(s^2),K3+B3*s,0;0,-K3-B3*s,K3+B3*s+M3*(s^2),fa]
%%rref(A)
%%#2

%%#3
A = [(2+1/s),-1,0,vs;-1,(2+1/s),-1,0;0,-1,(s+1),0]
rref(A)