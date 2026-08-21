# Marvel Ultimate (Terra-1610) - Local Dev Environment with Terraform & Docker

Ambiente de desenvolvimento local totalmente automatizado com **Terraform** e **Docker**, servindo uma aplicação web estática multi-páginas sobre o início do Universo Ultimate da Marvel nos anos 2000.

---

## Tecnologias Utilizadas

* **Infraestrutura como Código (IaC):** Terraform CLI (Provider Docker `kreuzwerker/docker`)
* **Container & Servidor Web:** Docker Desktop & Nginx Alpine
* **Front-end:** HTML5 semântico, CSS3 Moderno (Grid & Flexbox), Google Fonts

---

## Estrutura do Repositório

* `/terraform`: Contém as definições de infraestrutura para provisionar a imagem do Nginx e o container com volume compartilhado.
* `/src`: Código-fonte completo do site estático (páginas temáticas, estilos e imagens).

---

## Como Executar Localmente

### Pré-requisitos
* [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) instalado.
* [Docker Desktop](https://www.docker.com/products/docker-desktop/) instalado e rodando.

### Passo a Passo

1. **Clone o repositório:**
   ```bash
   git clone [https://github.com/SEU-USUARIO/meu-projeto-ultimate.git](https://github.com/SEU-USUARIO/meu-projeto-ultimate.git)
   cd meu-projeto-ultimate/terraform

2. comando para iniciar o terraform

**Inicialize os plugins do Terraform**

terraform init

**Provisione o ambiente:**

terraform apply -auto-approve

**Acesse no navegador:**

Abra http://localhost:8080


**Encerrar e destruir os recursos**

terraform destroy -auto-approve
