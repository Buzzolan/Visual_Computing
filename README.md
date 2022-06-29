# Visual_Computing
Matlab code for principal algorithms of computer vision

Per eseguire il codice procedere nel seguente ordine:
1) Calibrazione della fotocamera: apripre il file Metodo_DLT e il file help.txt per avere l'ordine dei punti da premere nell'immagine (si può usare anche i'immafine ordine). Per far funzonare in seguito il metodo sulla triangolazione bisogna ricordarsi di cambiare il nome dell'immagine e il nome della matrice di salvataggio (solo se si vuole eseguire nuovamente tutto il codice, altrimenti si possono usare i file che di trovano già nella cartella).

3) CalibrationToolkit: aprire poi calib_doc-->calib_doc--> htmls --> calib_example. Poi eseguire repoj_driver e animazione1. 

4) Esercizio_Triangolazione: lanciare Triangolazione_driver e selezionare i punti dei quali si vuole coniscere la distanza
5) linea_epipolare: Lanciare epip_driver per osservare le rette epipolari.

6.0) Rettificazione: rettificazione scacchiera.
6.1) Mosaicing_script: calcolo omografia. Bisogna scegliere i punti presenti in entrambe le immagini. consiglio punti sul tetto e vicino alle finestre o il campanello vicino alle porte.(vista dalla bibilioteca a Santorso).

7) Stereo: lanciare stereo_driver.

8) X84-ICP: algoritmo aboslute orientation. Lanciare driver_X84_ICP

9) Algo_Fiore. Lanciare driver_fiore. Ci sono le immagini di CV2 usate per la tesi. I punti proiettati sono anche i match con LoFTR

10)RobustFitting---> Test Ransac cnn

I restanti SIFT e RANSAC sono stati utilizzati anche nella pipeline di CameraPose estimation. 