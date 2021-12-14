<?php

session_start();
require_once('lib/connexion.php');
require_once('lib/argo_list_treatment.php');

?>


<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/styles.css">
    <title>Jason wild project</title>
</head>


<body>
    <!-- Header section -->
    <header>
        <h1>
            <img src="https://www.wildcodeschool.com/assets/logo_main-e4f3f744c8e717f1b7df3858dce55a86c63d4766d5d9a7f454250145f097c2fe.png" alt="Wild Code School logo" />
            Les Argonautes
        </h1>
    </header>

    <!-- Main section -->
    <main>

        <!-- New member form -->
        <h2>Ajouter un(e) Argonaute</h2>
        <form class="new-member-form" method="post">
            <label for="name">Nom de l&apos;Argonaute</label>
            <input id="name" name="name" type="text" placeholder="Inserez le nom de l'Argonaute" />
            <button type="submit" class="btn btn-success">Envoyer</button>
        </form>

        <!-- Verification et remplissage du formulaire -->
        <?php
        if (!empty($_POST)) {
            if (!empty($_POST['name'])) {
                $resetid = "ALTER TABLE `papyrus` AUTO_INCREMENT = 1"; //à verifier
                $sql_insert_argo = "INSERT INTO papyrus (id_argo, nom_argo) VALUES (NULL,'" . $_POST['name'] . "')";
                if (mysqli_query($connexion, $sql_insert_argo)) { ?>

                    <h3> <?php echo $_POST['name'];
                            header("Location: index.php"); ?> a été ajouté</h3>
                <?php    } else { ?>
                    <h3><?php echo "failed to insert"; ?></h3>
            <?php        }
            }
        } else { ?>
            <h4 class="text-danger text-center"><?php echo "Choissisez le nom de votre Agonaute"; ?></h4>
        <?php  } ?>
        <!-- fin du formulaire -->

        <!-- Member list -->
        <h2>Membres de l'équipage</h2>



        <!-- test -->
        <section class=" member-list">
            <div class="row">
                <?php
                $compteur = 0;
                foreach ($listeArgos as $key_argo => $value_argo) { ?>
                    <div class=col-md-4>
                        <div class="alert alert-primary"><?php echo $value_argo['nom_argo']; ?></div>
                    </div>
                    <?php $compteur++;
                    if ($compteur == 52) break; ?>

                <?php
                } ?>

            </div>
        </section>

        <!-- fin test -->
    </main>




    <footer>
        <p>Réalisé par Jason en Anthestérion de l'an 515 avant JC</p>
    </footer>

    <script src="js/bootstrap.bundle.min.js"></script>
</body>

</html>