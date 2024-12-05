<!DOCTYPE html>
<html lang="en">

    @include('partials.head')
    @include('partials.header')
    @include('partials.carousel')


    <!-- Main -->
    <main id="main">

        <!-- ======= Counts Section ======= -->
        <section id="counts" class="counts">
            <div class="container" data-aos="fade-up" data-aos-duration="1000">

                <div class="section-title">
                    <h2>Infos</h2>
                    <h3>Accords <span>en chiffres</span></h3>
                </div>
            </div>

            <div class="container-full" style="background-color: #EBF4FA;" data-aos="fade-up" data-aos-duration="1000">
                <div class="container">
                    <div class="row justify-content-center">

                        <div class="col-lg-2 col-md-6 mt-5 mt-lg-0">
                            <div class="count-box">
                                <div class="icon-count">
                                    <i class="bi bi-buildings"></i>
                                    <span data-purecounter-start="0" data-purecounter-end="07" data-purecounter-duration="1"
                                        class="purecounter"></span>
                                </div>
                                <p>Partenaire National</p>
                            </div>
                        </div>


                        <div class="col-lg-2 col-md-6">
                            <div class="count-box">
                                <div class="icon-count">
                                    <i class="bi bi-search"></i>
                                    <span data-purecounter-start="0" data-purecounter-end="44" data-purecounter-duration="1"
                                        class="purecounter"></span>
                                </div>
                                <p>Partenaire international</p>
                            </div>
                        </div>



                        <div class="col-lg-2 col-md-6 mt-5 mt-md-0">
                            <div class="count-box">
                                <div class="icon-count">
                                    <i class='bi bi-mortarboard'></i>
                                    <span data-purecounter-start="0" data-purecounter-end="10" data-purecounter-duration="1"
                                        class="purecounter"></span>
                                </div>
                                <p>Partenariats bilatéraux</p>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-6 mt-5 mt-lg-0">
                            <div class="count-box">
                                <div class="icon-count">
                                    <i class='bi bi-building'></i>
                                    <span data-purecounter-start="0" data-purecounter-end="44" data-purecounter-duration="1"
                                        class="purecounter"></span>
                                </div>
                                <p>Etablissements partenaires</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        
        <!-- End Counts Section -->

        

        <!-- ======= Search Section ======= -->
        <section id="search" class="search">
            <div class="container" data-aos="fade-up" data-aos-duration="500">

                <div class="section-title">
                    <h2>Recherche</h2>
                    <h3><span>Rechercher</span> des accords</h3>
                </div>

                <form class="row justify-content-center gy-2 gy-md-2 gx-md-4 gx-lg-0">
                    <div class="col-12 col-md-5 col-lg-2 mx-md-1 mx-lg-0 p-0 my-lg-0">
                        <input type="text" class="form-control rounded-0" placeholder="Partenaire"
                            aria-label="Partenaire">
                    </div>

                    <div class="col-12 col-md-5 col-lg-2 mx-md-1 mx-lg-0 p-0 my-lg-0">
                        <select class="form-control rounded-0" aria-label="Cible">
                            <option value="" selected disabled hidden><span>Choisir un cible</span></option>
                            <option value="etudiant">Étudiant</option>
                            <option value="per">PER</option>
                            <option value="pats">PATS</option>
                        </select>
                    </div>

                    <div class="col-12 col-md-5 col-lg-2 mx-md-1 mx-lg-0 p-0 my-lg-0">
                        <input type="text" class="form-control rounded-0" placeholder="Domaine" aria-label="Domaine">
                    </div>
                    <div class="col-12 col-md-5 col-lg-2 mx-md-1 mx-lg-0 p-0 my-lg-0">
                        <input type="text" class="form-control rounded-0" placeholder="Ville" aria-label="Ville">
                    </div>
                    <div class="col-12 col-md-5 col-lg-2 mx-md-1 mx-lg-0 p-0 my-lg-0">
                        <input type="text" class="form-control rounded-0" placeholder="Pays" aria-label="Pays">
                    </div>
                    <div class="col-12 col-md-8 col-lg-5 col-xl-2 p-0 my-xl-0 mt-3 mt-xl-0 d-flex">
                        <div class="col-6 p-lg-0 text-center text-lg-start">
                            <button type="submit" class="btn text-white rounded-0 h-100 px-4 px-md-5 p-xl-0 search"
                                style="background-color: #2897E7;">Rechercher</button>
                        </div>
                        <div class="col-6 p-lg-0 text-center text-lg-start">
                            <button type="reset" class="btn text-white rounded-0 h-100 px-4 px-md-5 p-xl-0 search"
                                style="background-color: #0564A8;">Réinitialiser</button>
                        </div>
                    </div>
                </form>

            </div>
        </section>


        <!-- ======= Search Section ======= -->
        <section id="services" class="services">

            <div class="section-title" data-aos="fade-up" data-aos-duration="300">
                <h2>Domaines</h2>
            </div>
            <div class="container-full py-3" data-aos="fade-up" data-aos-duration="500">

                <div class="section-title">
                    <h3>Nos <span>Domaines</span> de recherches</h3>
                    <p>Retrouvez les accords par pays</p>
                </div>

                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-10 col-md-5 col-xl-4 m-4 border border-2 rounded-0 bg-light domain-service"
                            style="height: 100px;">
                            <p class="">
                                <span class="service-icon">
                                    <svg width="48" height="35" viewBox="0 0 48 35" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M-3.53462e-05 20.6194C-3.50773e-05 23.6955 1.01827 26.6456 2.83087 28.8207C4.64346 30.9958 7.10187 32.2178 9.66527 32.2178C12.2287 32.2178 14.6871 30.9958 16.4997 28.8207C18.3123 26.6456 19.3306 23.6955 19.3306 20.6194L9.66527 20.6194L-3.53462e-05 20.6194Z"
                                            fill="white"/>
                                        <path
                                            d="M28.3515 20.6194C28.3515 23.6955 29.3698 26.6456 31.1824 28.8207C32.995 30.9958 35.4534 32.2178 38.0168 32.2178C40.5802 32.2178 43.0386 30.9958 44.8512 28.8207C46.6638 26.6456 47.6821 23.6955 47.6821 20.6194L38.0168 20.6194L28.3515 20.6194Z"
                                            fill="white" />
                                        <path
                                            d="M1.2887 20.6188L8.53214 7.24627C9.01958 6.34638 10.311 6.34638 10.7984 7.24627L18.0419 20.6188"
                                            stroke="white" stroke-width="2.57741" stroke-linecap="round" />
                                        <path
                                            d="M29.6401 20.6188L36.8836 7.24627C37.371 6.34638 38.6624 6.34638 39.1499 7.24627L46.3933 20.6188"
                                            stroke="white" stroke-width="2.57741" stroke-linecap="round" />
                                        <line x1="8.37666" y1="4.5103" x2="39.3056" y2="4.5103"
                                            stroke="white" stroke-width="3.86612" stroke-linecap="round" />
                                        <line x1="23.8409" y1="32.8619" x2="23.8409" y2="1.9329"
                                            stroke="white" stroke-width="3.86612" stroke-linecap="round" />
                                    </svg>
                                </span>
                                <span class="text-center" style="font-weight: bold">
                                    AFRIQUE
                                </span>
                            </p>
                        </div>
                        <div class="col-10 col-md-5 col-xl-4 m-4 border border-2 rounded-0 bg-light domain-service"
                            style="height: 100px;">
                            <p>
                                <span class="service-icon">
                                    <svg width="41" height="32" viewBox="0 0 41 32" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M31.1086 13.9886C33.6248 13.635 35.5619 11.4778 35.5674 8.86428C35.5674 6.28861 33.6897 4.15305 31.2277 3.74902"
                                            stroke="white" stroke-width="3" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                        <path
                                            d="M34.4277 20.0371C36.8645 20.4015 38.5654 21.2546 38.5654 23.0132C38.5654 24.2235 37.7646 25.0099 36.4695 25.5041"
                                            stroke="white" stroke-width="3" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M20.2836 20.7832C14.4865 20.7832 9.5354 21.6616 9.5354 25.1698C9.5354 28.6761 14.4559 29.5798 20.2836 29.5798C26.0806 29.5798 31.0299 28.7104 31.0299 25.2004C31.0299 21.6905 26.1113 20.7832 20.2836 20.7832Z"
                                            stroke="white" stroke-width="3" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                            d="M20.2847 15.7766C24.0887 15.7766 27.173 12.6941 27.173 8.88828C27.173 5.08431 24.0887 2 20.2847 2C16.4807 2 13.3964 5.08431 13.3964 8.88828C13.382 12.6796 16.4428 15.7639 20.2342 15.7766H20.2847Z"
                                            stroke="white" stroke-width="3" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                        <path
                                            d="M9.45652 13.9886C6.93857 13.635 5.00321 11.4778 4.9978 8.86428C4.9978 6.28861 6.87544 4.15305 9.33747 3.74902"
                                            stroke="white" stroke-width="3" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                        <path
                                            d="M6.13766 20.0371C3.70088 20.4015 2 21.2546 2 23.0132C2 24.2235 2.80084 25.0099 4.09588 25.5041"
                                            stroke="white" stroke-width="3" stroke-linecap="round"
                                            stroke-linejoin="round" />
                                    </svg>
                                </span>
                                <span style="font-weight: bold">
                                    AMERIQUE
                                </span>
                            </p>
                        </div>
                        <div class="col-10 col-md-5 col-xl-4 m-4 border border-2 rounded-0 bg-light domain-service"
                            style="height: 100px;">
                            <p>
                                <span class="service-icon">
                                    <svg width="39" height="39" viewBox="0 0 39 39" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M35.2676 1.5459L24.0398 5.76201L28.0693 8.30234C20.8711 17.3668 10.4584 22.9502 1.66052 25.0754L4.15287 29.6152C14.0385 26.3932 24.5045 20.5812 31.2457 10.3133L34.3154 12.248L35.2676 1.5459ZM35.8541 10.4352L35.4885 14.6094L31.5808 12.1414C31.4437 12.3471 31.299 12.5451 31.1543 12.7508V37.0953H37.0957V10.4352H35.8541ZM24.3826 20.1852C23.4152 21.023 22.4174 21.8152 21.4043 22.5617V37.0953H27.3457V20.1852H24.3826ZM14.9601 26.5836C13.8633 27.1625 12.7664 27.6957 11.6543 28.1984V37.0953H17.5957V26.5836H14.9601ZM1.90427 29.9352V37.0953H7.84568V29.9352H7.41302C6.28416 30.3541 5.15605 30.7426 4.0348 31.1006L3.49703 31.2682L2.76578 29.9352H1.90427Z"
                                            fill="white" />
                                    </svg>
                                </span>
                                <span style="font-weight: bold">
                                    ASIE
                                </span>
                            </p>
                        </div>
                        <div class="col-10 col-md-5 col-xl-4 m-4 border border-2 rounded-0 bg-light domain-service"
                            style="height: 100px;">
                            <p>
                                <span class="service-icon">
                                    <!-- SVG Icon représentant l'Europe -->
                                    <svg width="39" height="39" viewBox="0 0 39 39" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <g clip-path="url(#clip0_1015_1695)">
                                            <!-- Exemple d'une carte de l'Europe ou un symbole de l'UE -->
                                            <circle cx="19.5" cy="19.5" r="18" stroke="white"
                                                stroke-width="3" />
                                            <text x="50%" y="50%" text-anchor="middle" stroke="white" dy=".3em"
                                                font-size="12">EU</text>
                                        </g>
                                        <defs>
                                            <clipPath id="clip0_1015_1695">
                                                <rect width="39" height="39" fill="white" />
                                            </clipPath>
                                        </defs>
                                    </svg>
                                </span>
                                <span style="font-weight: bold">
                                    EUROPE
                                </span>
                            </p>
                        </div>


                        <div class="col-10 col-md-5 col-xl-4 m-4 border border-2 rounded-0 bg-light domain-service"
                            style="height: 100px;">
                            <p>
                                <span class="service-icon">
                                    <svg width="39" height="39" viewBox="0 0 39 39" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M19.5744 1.70613C18.2947 1.70613 17.0996 2.28885 16.0809 3.24305C15.0623 4.19748 14.1903 5.52668 13.4634 7.13673C13.311 7.47402 13.1655 7.82456 13.0265 8.18615C12.6514 8.12661 12.2747 8.07769 11.8968 8.03944C11.4573 7.99564 11.0285 7.96845 10.6118 7.9587C9.36106 7.92899 8.21795 8.05582 7.21606 8.35951C5.88031 8.76452 4.7781 9.50842 4.13826 10.6165C3.49842 11.7248 3.40549 13.0512 3.72259 14.4106C4.03985 15.7699 4.75487 17.1897 5.78586 18.6243C6.00219 18.9252 6.23329 19.227 6.47719 19.5287C6.23858 19.8232 6.00835 20.1245 5.78677 20.4321C4.75571 21.8666 4.04068 23.2864 3.72351 24.6457C3.40633 26.0051 3.49933 27.3316 4.13918 28.4396C4.77902 29.5479 5.88123 30.2918 7.21698 30.6966C8.5528 31.1017 10.1399 31.1923 11.8977 31.0167C12.2663 30.9798 12.6427 30.9306 13.0257 30.8703C13.1616 31.2248 13.3076 31.5754 13.4634 31.9216C14.1903 33.5319 15.0622 34.8609 16.0809 35.8152C17.0995 36.7695 18.2948 37.3524 19.5744 37.3524C20.854 37.3524 22.0492 36.7695 23.0679 35.8152C24.0865 34.8608 24.9585 33.5318 25.6854 31.9216C25.8412 31.5754 25.9871 31.2249 26.1231 30.8704C26.5056 30.9306 26.8817 30.9799 27.25 31.0167C29.0078 31.1922 30.595 31.1016 31.9307 30.6966C33.2666 30.2917 34.3688 29.5478 35.0087 28.4396C35.6485 27.3313 35.7414 26.005 35.4243 24.6457C35.1071 23.2865 34.392 21.8667 33.3611 20.4321C33.1394 20.1245 32.9092 19.8233 32.6706 19.5287C32.9096 19.2339 33.1401 18.9323 33.3619 18.6244C34.3929 17.1897 35.1079 15.77 35.4251 14.4107C35.7423 13.0513 35.6493 11.7249 35.0094 10.6166C34.3696 9.50849 33.2674 8.7646 31.9316 8.35959C30.9298 8.05589 29.7866 7.92907 28.536 7.9587C28.1191 7.96845 27.6902 7.99564 27.2507 8.03944C26.882 8.07631 26.5052 8.12574 26.1221 8.18607C25.9863 7.83226 25.8406 7.48234 25.6851 7.13673C24.9582 5.52646 24.0862 4.19726 23.0676 3.24297C22.0489 2.28869 20.8536 1.70605 19.5741 1.70605L19.5744 1.70613ZM19.5744 3.12955C20.4279 3.12955 21.2648 3.50455 22.0946 4.28203C22.9244 5.05937 23.7169 6.23607 24.3879 7.72249C24.4971 7.96501 24.6009 8.20991 24.6992 8.45702C23.0678 8.81975 21.34 9.37626 19.574 10.1198C17.8083 9.37641 16.0807 8.82005 14.4496 8.45732C14.5503 8.20519 14.6538 7.95946 14.7609 7.72241C15.432 6.23592 16.2245 5.05922 17.0543 4.28173C17.8841 3.5044 18.7209 3.1294 19.5746 3.1294L19.5744 3.12955ZM10.1603 9.37999C10.2977 9.37862 10.4374 9.37953 10.5791 9.38273C10.9569 9.39111 11.3498 9.41549 11.7554 9.45609C12.0149 9.48198 12.28 9.51512 12.5495 9.55419C12.0478 11.1482 11.6659 12.9227 11.4265 14.8238C9.89944 15.9816 8.55349 17.1999 7.42371 18.4315C7.25836 18.2224 7.09767 18.0096 6.94177 17.7933C5.99 16.469 5.36729 15.1943 5.10884 14.087C4.85047 12.9796 4.94431 12.0674 5.37103 11.3282C5.79774 10.5891 6.54103 10.0518 7.62907 9.72192C8.34318 9.50537 9.19821 9.38867 10.1603 9.37991L10.1603 9.37999ZM28.9876 9.37999C29.9496 9.38875 30.8047 9.50544 31.5188 9.722C32.607 10.0518 33.35 10.5891 33.7767 11.3282C34.2035 12.0674 34.2974 12.9796 34.039 14.087C33.7808 15.1943 33.1577 16.469 32.2061 17.7933C32.0502 18.0096 31.8896 18.2224 31.7243 18.4316C30.5947 17.2002 29.2491 15.9822 27.7224 14.8245C27.4833 12.9231 27.1009 11.1485 26.5992 9.55419C26.8683 9.51512 27.1332 9.48183 27.3924 9.45609C27.7834 9.41647 28.1759 9.39197 28.5688 9.38266C28.7084 9.37948 28.848 9.37854 28.9876 9.37984V9.37999ZM25.1851 9.8096C25.5637 10.9855 25.8771 12.2831 26.111 13.6715C25.3553 13.161 24.5818 12.6774 23.7919 12.2216C23.0026 11.7656 22.1975 11.3377 21.378 10.9386C22.6973 10.4469 23.9775 10.0697 25.1851 9.80975V9.8096ZM13.9637 9.80983C15.171 10.0699 16.4511 10.4471 17.77 10.9387C16.9505 11.3378 16.1454 11.7657 15.3561 12.2216C14.5666 12.6772 13.7934 13.1606 13.0379 13.6707C13.2717 12.2826 13.5851 10.9855 13.9637 9.80983ZM19.574 11.673C20.7323 12.184 21.9081 12.7778 23.0802 13.4545C24.2527 14.1315 25.3554 14.853 26.3773 15.601C26.5141 16.8599 26.5876 18.1755 26.5876 19.5292C26.5876 20.8822 26.5143 22.1972 26.3776 23.4556C25.3557 24.2034 24.2531 24.9248 23.081 25.6016C21.9087 26.2784 20.7326 26.8725 19.574 27.3834C18.4153 26.8725 17.2392 26.2784 16.0669 25.6016C14.895 24.925 13.7929 24.2039 12.7714 23.4563C12.6347 22.1977 12.5612 20.8825 12.5612 19.5291C12.5612 18.1752 12.6347 16.8595 12.7716 15.6004C13.7933 14.8526 14.8956 14.1312 16.0678 13.4545C17.2399 12.7779 18.4157 12.184 19.574 11.6731V11.673ZM19.6702 13.8146L15.5949 16.3296L19.6702 18.8448L23.7456 16.3296L19.6702 13.8146V13.8146ZM11.2334 16.7955C11.1694 17.7053 11.1375 18.617 11.1377 19.529C11.1377 20.4581 11.1704 21.3702 11.2335 22.2608C10.1481 21.3643 9.18122 20.4441 8.35217 19.5283C9.18122 18.6126 10.148 17.6922 11.2334 16.7955ZM27.9155 16.7963C29.0004 17.6929 29.967 18.6128 30.7958 19.5284C29.967 20.444 29.0004 21.3639 27.9155 22.2602C27.9794 21.3512 28.0114 20.4403 28.0111 19.5291C28.0111 18.5995 27.9784 17.6872 27.9154 16.7963H27.9155ZM14.6768 17.4357V22.4019L18.9569 25.0434V20.0773L14.6768 17.4357ZM24.6597 17.4383L20.3806 20.0792V25.0428L24.6598 22.4019V17.4383H24.6597ZM7.42355 20.6253C8.55349 21.857 9.89929 23.075 11.4262 24.2328C11.6654 26.1337 12.0475 27.908 12.549 29.502C12.2801 29.5409 12.0153 29.5741 11.7564 29.6C10.1336 29.7621 8.7181 29.664 7.62998 29.3342C6.54179 29.0044 5.79881 28.4669 5.37202 27.7277C4.9453 26.9885 4.85138 26.0763 5.10976 24.969C5.36813 23.8617 5.99091 22.587 6.94268 21.2626C7.09826 21.0467 7.25854 20.8342 7.42355 20.6253ZM31.7242 20.6255C31.8923 20.8388 32.0533 21.0513 32.2051 21.2626C33.1568 22.5869 33.7796 23.8616 34.0379 24.9689C34.2963 26.0763 34.2026 26.9884 33.7759 27.7277C33.349 28.4668 32.6059 29.0043 31.5177 29.3341C30.4297 29.6639 29.0144 29.762 27.3916 29.6C27.127 29.5731 26.863 29.5405 26.5998 29.5021C27.1014 27.9077 27.4834 26.133 27.7226 24.2318C29.2491 23.0742 30.5947 21.8566 31.7243 20.6254L31.7242 20.6255ZM26.1113 25.385C25.8775 26.7733 25.5641 28.0708 25.1855 29.2467C23.9779 28.9867 22.6975 28.6093 21.3782 28.1177C22.1979 27.7184 23.0033 27.2903 23.7928 26.8343C24.5825 26.3786 25.3559 25.8952 26.1115 25.385H26.1113ZM13.0376 25.3858C13.7928 25.8957 14.5657 26.3789 15.355 26.8343C16.1446 27.2903 16.95 27.7183 17.7697 28.1177C16.4507 28.6092 15.1707 28.9865 13.9631 29.2465C13.5846 28.0709 13.2714 26.7737 13.0376 25.3858ZM19.6165 25.4505L19.6683 25.4825L19.7199 25.4505H19.6166H19.6165ZM19.5739 28.9367C21.3403 29.6801 23.0682 30.2365 24.6998 30.5992C24.6013 30.847 24.4973 31.0926 24.3879 31.3358C23.7169 32.8221 22.9244 33.9987 22.0946 34.7762C21.2648 35.5536 20.4279 35.9287 19.5744 35.9287C18.7208 35.9287 17.8839 35.5536 17.0542 34.7762C16.2245 33.9988 15.432 32.8221 14.7609 31.3357C14.6515 31.0925 14.5475 30.8469 14.449 30.5991C16.0803 30.2364 17.808 29.68 19.574 28.9367H19.5739Z"
                                            fill="white" />
                                    </svg>
                                </span>
                                <span style="font-weight: bold">
                                    OCEANIE
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>


        </section>
        <!-- End Services Section -->

    </main>
    <!-- End #main -->



    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>
@include('partials.footer')
@include('partials.script')   
</body>
</html>
