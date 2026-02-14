provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "flask" {
  metadata {
	name = "flask-terraform"

  }

  spec {
    replicas = 1

    selector {
       match_labels = {
	app = "flask"
       }
     }

     template {
       metadata {
	labels = {
	 app = "flask"
	}
      }

      spec {
	container {
	  name = "flask"
	  image = "shihoos/devops-flask-app:latest"

	  port {
	    container_port = 5000
           }
        }
      }
    }
  }
}

resource "kubernetes_service" "flask" {
   metadata {
     name = "flask-terraform-service"
   }

   spec {
     type = "NodePort"

     selector = {
	app = "flask"
     }
     port {
       port = 5000
       target_port = 5000
     }
   }
}
