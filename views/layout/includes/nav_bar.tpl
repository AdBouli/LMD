<div class="top-bar bg-lgrey">

<!-- 
  -- TOB BAR LEFT
  -->
  <div class="left"> 
    <ul>
      <li>LMD</li>
      <a class="lgrey" href="<?php echo WEBROOT.'Home/front'; ?>"><li>Accueil</li></a>
      <a href="<?php echo WEBROOT; ?>Search/Metier"><li class="element">Les métiers</li></a>
      <a href="<?php echo WEBROOT; ?>Search/Parcour"><li class="element">Les parcours</li></a>
      <a href="<?php echo WEBROOT; ?>Search/Section"><li class="element">Les sections</li></a>
      <a class="lgrey" href="<?php echo WEBROOT.'Home/back'; ?>"><li>Administration</li></a>
    </ul>
  </div>

<!-- 
  -- TOP-BAR-RIGHT
 -->
  <div class="right">
    <ul>
      <?php if (isset($_SESSION['user'])) : ?> <!-- SI CONNECTE -->

        <a class="lgrey" href="<?php echo WEBROOT.'User/home' ?>"><li>Home</li></a>
        <a class="lgrey" href="<?php echo WEBROOT.'Session/logout' ?>"><li>Deconnexion</li></a>
        <li><?php echo 'Bonjour '.$_SESSION['user']['login'] ?></li>

      <?php else : ?> <!-- SI DECONNECTE -->

        <a class="lgrey" href="<?php echo WEBROOT.'Session' ?>"><li>Connection</li></a>
        <a class="lgrey" href="<?php echo WEBROOT.'Session/signin' ?>"><li>Inscription</li></a>

      <?php endif; ?>
    </ul>
  </div>

</div>