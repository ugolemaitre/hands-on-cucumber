# language: fr
Fonctionnalité: Ajouter une tâche

  Scénario: Ajouter une tâche avec un contenu
    Etant donnée un utilisateur
    Et que cet utilisateur n'a pas de tâches enregistrées
    Etant donnée une nouvelle une tâche
    Et que cette tâche a un contenu
    Quand l'utilisateur demande l'enregistrement de la tâche
    Alors la tâche est enregistrée

  Scénario: Ajouter une tâche sans contenu
    Etant donnée un utilisateur
    Et que cet utilisateur n'a pas de tâches enregistrées
    Etant donnée une nouvelle une tâche
    Et que cette tâche n'a pas de contenu
    Quand l'utilisateur demande l'enregistrement de la tâche
    Alors la tâche n'est pas enregistrée
    Et le message d'erreur "Création de tâche impossible : absence de contenu" est retourné à l'utilisateur

  Scénario: Ajouter une tâche avec un contenu existant déja
    Etant donnée un utilisateur
    Et que cet utilisateur a des tâches enregistrées
    Et que ces tâches ne sont pas archivées
    Etant donnée une nouvelle une tâche
    Et que cette tâche à un contenu similaire à une tâche existante
    Quand l'utilisateur demande l'enregistrement de la tâche
    Alors la tâche n'est pas enregistrée
    Et le message d'erreur "Création de tâche impossible : cette tâche existe déjà" est retourné à l'utilisateur
