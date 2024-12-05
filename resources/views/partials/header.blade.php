<section id="titlebar" style="max-height: 86px; padding: 0px !important;">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-auto">
          <a href="{{ url('/') }}" class="logo">
            <img class="" src="./assets/img/logo-ucad-black-transp.png" width="220" height="80" alt="Ucad">
          </a>
          <span class="mx-5 fw-bolder h5" style="letter-spacing: 5px;">
            ANNUAIRE DES ACCORDS DE COOPERATION
          </span>
        </div>

      </div>

    </div>
  </section>

    <!-- ======= Search Bar ======= -->
    <div id="searchbar" class="border-bottom border-top " style="max-height: 86px;">
        <div class="container my-3">
          <div class="row justify-content-center">
            <div class="col-4 pe-0">
              <input type="text" placeholder="Rechercher" class="form-control w-100 rounded-0 rounded-start" style="height: 40px;border: 2px solid #0564A8;">
            </div>
            <div class="col-2 ps-0">
              <button type="submit" style="height: 40px;border: 1px solid #0564A8;border-left: 0px;background-color: #0564A8;" class="text-white rounded-0 rounded-end">Rechercher</button>
            </div>
          </div>

        </div>
      </div>

  <!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center" style="height: 50px">
    <div class="container d-flex align-items-center justify-content-center">
        <nav id="navbar" class="navbar">
            <ul>
                <li>
                    <a class="nav-link scrollto" href="{{ url('/') }}" style="font-weight: bold">ACCUEIL</a>
                </li>
                <li class="dropdown" style="cursor: pointer">
                    <a href="{{ route('catalogue') }}" style="text-decoration: none; font-weight: bold;">
                        CATALOGUE DES ACCORDS <i class="bi bi-chevron-down"></i>
                    </a>
                    <ul>
                        <li><a href="#">Cadre</a></li>
                        <li><a href="#">Convention</a></li>
                        <li><a href="#">Subvention</a></li>
                    </ul>
                </li>
                <li class="dropdown" style="cursor: pointer">
                    <a href="{{ route('accordcible') }}" style="font-weight: bold">
                        ACCORDS PAR CIBLE <i class="bi bi-chevron-down"></i>
                    </a>
                    <ul>
                        <li><a href="#">PER</a></li>
                        <li><a href="#">PATS</a></li>
                        <li><a href="#">ÉTUDIANTS</a></li>
                        <li><a href="#">TOUS</a></li>
                    </ul>
                </li>
                <li class="dropdown" style="cursor: pointer">
                    <a href="{{ route('accordpays') }}" style="font-weight: bold">
                        ACCORDS PAR PAYS <i class="bi bi-chevron-down"></i>
                    </a>
                    <ul>
                        <li><a href="#">Afrique</a></li>
                        <li><a href="#">Amérique</a></li>
                        <li><a href="#">Asie</a></li>
                        <li><a href="#">Europe</a></li>
                        <li><a href="#">Océanie</a></li>
                    </ul>
                </li>
                <li class="dropdown" style="cursor: pointer">
                    <a href="#" style="font-weight: bold">PARTENARIAT <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="#">National</a></li>
                        <li><a href="#">International</a></li>
                    </ul>
                </li>
                <li>
                    <a class="nav-link scrollto" style="cursor: pointer; font-weight: bold" href="#contact">Contact</a>
                </li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
    </div>
</header>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const navLinks = document.querySelectorAll("#navbar a");
        const currentURL = window.location.href;

        navLinks.forEach((link) => {
            if (link.href === currentURL) {
                navLinks.forEach((nav) => nav.classList.remove("active"));
                link.classList.add("active");
            }
        });
    });
</script>

<!-- End Header -->
