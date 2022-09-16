/*
exercice 1 : programme qui permet de trouver la valeur maximale 
entre plusieurs variables.
1.a) Ecrire le programme qui affiche dans la console le max 
entre 3 nombres entiers. Etendre le programme de façon à ce que
la fenêtre soit coloriée en vert dès que la solution est trouvée
(alors qu'elle est blanche au démarrage).
*/

//déclaration des variables globales du programme
final int green=#00FF00;
final int longe = 200;
final int large = 100;
final int y=14;
final int z=7;
final int x=3;

//setup : déclaration de la taille de la fenêtre
//et noLoop qui empêche la fonction draw de se répéter
void setup(){
  size (200,100);
  noLoop();
}



//ouverture d'une fonction permettant de mettre le code "pratique"
void draw (){
  //initialisation du fond de couleur blanc
    background (255);
    print("La valeur maximale est : ");
    /*affiche la valeur sortant de la fonction valeurSup 
    avec comme paramètres les 3 chiffres à comparer*/
    print (valeurSup(x,y,z));
    //on prend le stylo de couleur verte et on dessine un rectangle
    fill (green);
    rect (0, 0, longe, large);
}


/*création de notre fonction "valeurSup" permettant de retourner 
la valeurs maximale de x y z*/
//cette fonction récupère les 3 chiffres à comparer (arguments)
int valeurSup (int _x, int _y, int _z) {
    //on met les 3 variables dans un tableau
    int tab[]={_x,_y,_z};
    //première case du tableau=initialisée en valeur max
    int max = tab [0];
    /*La boucle est donc répétée tant que i est strictement 
    plus petit que la taille du tableau cette boucle va comparer 
    chaque valeur du tableau pour garder la plus grande dans la variable max*/
    for (int i=1; i<tab.length;i++){
      int nbr = tab[i];
      if (nbr>max){
        max=nbr;
      }
    }
    //retourne la valeur max quand on fait un appel de fonction
    return max;
  }
