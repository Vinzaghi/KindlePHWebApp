<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--BOOTSTRAP-->
    <!--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

    <!--BOOTSTRAP-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Domine:wght@400;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <title>My Cart</title>

    <style>
        .navbar-custom {
            background-color: #007208;
        }
        .btn-primary, .btn-primary:hover, .btn-primary:active, .btn-primary:visited {
            background-color: #007208;
        }
        body{
          background-color: #E6EFBE;
        }

    </style>
</head>


<body>
  <nav class="navbar navbar-expand-lg navbar-custom">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img class="logo" src="images/logo-brand.png" alt="Logo" height="72">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
            <a class="nav-link active text-light" style="font-family: 'Domine', serif;" aria-current="page" href="#" >Home</a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-light" style="font-family: 'Domine', serif;" aria-current="page" href="#">Browse</a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-light" style="font-family: 'Domine', serif;" aria-current="page" href="#">My Cart</a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-light" style="font-family: 'Domine', serif;" aria-current="page" href="#">My Profile</a>
            </li>
            <li class="nav-item">
            <a class="nav-link text-light" style="font-family: 'Domine', serif;" aria-current="page" href="#">About Us</a>
            </li>
            <!--<li class="nav-item">
            <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Dropdown
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
            </li>
            <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </li> -->
        </ul>
        <form class="d-flex">
            <input class="form-control me-2" style="font-family: 'Domine', serif;" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-light" style="font-family: 'Domine', serif;" type="submit">Search</button>
        </form>
        </div>
    </div>
  </nav>
    <section class="h-100" >
      <div class="container h-100 py-5">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-10">

            <div class="d-flex justify-content-between align-items-center mb-4">
              <h3 class="fw-normal mb-0 text-black">My Cart</h3>

            </div>

            <div class="card rounded-3 mb-4">
              <div class="card-body p-4">
                <div class="row d-flex justify-content-between align-items-center">
                  <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                    <a href="#!" class="text-danger"><i class="fas fa-trash fa-lg"></i></a>
                  </div>
                  <div class="col-md-2 col-lg-2 col-xl-2">
                    <img
                      src="images/KindleMiniPot.png"
                      class="img-fluid rounded-3" alt="Kindle Mini Pot Scented Soy Candles">
                  </div>
                  <div class="col-md-3 col-lg-3 col-xl-3">
                    <p class="lead fw-normal mb-2">Kindle Mini Pot Scented Soy Candles</p>
                    <p><span class="text-muted">Scents: </span>Lavander <span class="text-muted"> <br> Size: </span>50ml</p>
                  </div>
                  <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                    <button class="btn btn-link px-2"
                      onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                      <i class="fas fa-minus"></i>
                    </button>

                    <input id="form1" min="0" name="quantity" value="2" type="number"
                      class="form-control form-control-sm" />

                    <button class="btn btn-link px-2"
                      onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                      <i class="fas fa-plus"></i>
                    </button>
                  </div>
                  <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                    <h5 class="mb-0">₱ 58.00</h5>
                  </div>
                  
                </div>
              </div>
            </div>


            <div class="card">
              <div class="card-body">
                <div class="d-grid gap-2">
                  <button type="button" class="btn btn-primary btn-block btn-lg">Checkout</button>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>
</body>
</html>
