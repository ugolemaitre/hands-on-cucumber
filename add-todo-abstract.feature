# language: fr
Fonctionnalité: Ajouter une tâche

  # tache valide = contenu
  Scénario: Ajouter une tâche valide
    Etant donnée une nouvelle tâche
    Et que cette tâche est valide
    Quand l'utilisateur demande l'enregistrement de la tâche
    Alors la tâche est enregistrée

  Scénario: Ajouter une tâche non valide
    Etant donnée une nouvelle tâche
    Et que cette tâche est invalide
    Quand l'utilisateur demande l'enregistrement de la tâche
    Alors la tâche n'est pas enregistrée
