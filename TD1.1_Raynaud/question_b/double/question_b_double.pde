/*
exercice 1 : programme qui permet de trouver la 
valeur maximale entre plusieurs variables
1.b) Ecrire le programme qui affiche à la console et dans 
l'ordre croissant les 3 valeurs flottantes initialisées, 
et qui colorie en bleu la fenêtre une fois le traitement
terminé (alors qu elle est blanche au démarrage).
*/

/*déclaration des variables globales du programme. Les variables
commencant par f* sont celles à classer*/
final int blue=#0d47a1;
final int longe = 200;
final int large = 200; 
final double f1=-5.4;   
final double f2=-18.114;        
final double f3=0.00;

/*setup : déclaration de la taille de la fenêtre
et noLoop qui empêche la fonction draw de se répéter*/
void setup(){  
  size (200,200);     
  noLoop();  
}

//ouverture d'une fonction permettant de mettre le code "pratique"
void draw (){
    background (255);
    croissant(f1,f2,f3);    
    fill (blue);      
    rect (0, 0, longe, large);  
}


/*création de notre fonction de type float permettant 
de ranger les valeurs dans l'ordre croissant*/
double croissant (double _f1, double _f2, double _f3) {
  float t = -1;
  //on met les valeurs dans un tableau
  double tab[]={_f1,_f2,_f3};
  /*
  tant que le tableau n'est pas rangé dans l'ordre croissant:
  il y aura une comparaison grâce aux if entre les cases 0 et 1 puis
  entre les cases 1 et 2. Selon les valeurs des cases, il peut y avoir
  des inversions entre elles se qui rangera le tableau et fera sortir du while.
  */
  while (!(tab[0]<=tab[1] && tab[1]<=tab[2] && tab[0]<tab[2])){
    if (tab[0]>tab[1]) {  
      double inter = tab[1]; 
     tab[1]=tab[0]; 
     tab[0]=inter;    
   }
   //les if de compraisons expliqué dans les commentaires au dessus
   if(tab[1]>tab[2]){
     double inter2 = tab[2];
     tab[2]=tab[1];
     tab[1]=inter2;
  }
}

for (int i=0; i<tab.length;i++){
  print("La ");
  print(i+1);
  print(" valeur est : ");
  println(tab[i]);
}
//retourne une variable qui ne nous intéressera pas, sert juste à marquer la fin de la fonction
return t;
}
