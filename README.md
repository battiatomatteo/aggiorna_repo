# Aggiorna tutte le repository Git con un file `.cmd`

Questo script batch per Windows consente di aggiornare automaticamente tutte le repository Git clonate localmente eseguendo `git pull` su ognuna di esse.

## 📂 Struttura prevista

Assicurati che tutte le repository siano contenute **in sottocartelle di una stessa directory principale**. Ad esempio:

```
C:\Repo\
│
├── repo1\
├── repo2\
└── repo3\
```

Ogni sottocartella deve essere una repository Git valida (contenere una cartella `.git` al suo interno).

## 🛠️ Creazione dello script

Crea un file chiamato `aggiorna_repo.cmd` e inserisci il codice batch che esegue il `git pull` su ogni repository. Lo script deve essere configurato per puntare alla cartella che contiene tutte le tue repository.

## 🔧 Configurazione

- Modifica la directory all’interno dello script per puntare al percorso reale dove si trovano le tue repository Git.
- Assicurati che **Git** sia installato e accessibile dal prompt dei comandi (`git --version` dovrebbe restituire un risultato valido).

## ▶️ Utilizzo

Esegui il file `.cmd` con doppio clic o da prompt dei comandi.

Lo script controllerà ogni sottocartella e, se è una repository Git, eseguirà automaticamente `git pull` per scaricare eventuali aggiornamenti.

## 🧠 Note

- Lo script **non è ricorsivo**: esegue `git pull` solo nelle sottocartelle immediate della directory principale.
- Se desideri una versione **ricorsiva** (che cerca repository in più livelli di sottocartelle), può essere realizzata su richiesta.

## ✅ Requisiti

- Sistema operativo: Windows
- Git installato e configurato nel `PATH`

---

✅ Semplice, efficace e automatizzato!
