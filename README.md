# URLSession


Via trois écrans séparés par une TabBar. Je présente trois façons différentes de télécharger une image sur internet pour la présenter à l'écran.

1. Le système le plus basique où l'action se fait au sein même du controller.
2. Je sépare le "Downloader" du controller et utilise une méthode avec closure et @escaping et un DispatchQueue.
3. Je sépare le "Downloader" du controller et utilise une méthode avec une closure optionnelle qui me permet d'utiliser le DispatchQueue sans @escaping. 
Pour ajouter de la lisibilité au code, j'utilise également un typealias.
