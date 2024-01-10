# juliodev-blog

<a name="readme-top"></a>
<div align="center">
    <img src="logo-julio.png" alt="main-logo" width="500"  height="auto" />
  <br/>
  <h3><b>JulioDev Blog</b></h3>
</div>
# 📗 Table of Contents

- [juliodev-blog](#juliodev-blog)
- [📗 Table of Contents](#-table-of-contents)
- [📖 JulioDev Blog ](#-juliodev-blog-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Database](#database)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ ](#-faq-)
  - [📝 License ](#-license-)

# 📖 JulioDev Blog <a name="about-project"></a>

The JulioDev Blog is a full-stack web application that I created from scratch. My goal is to share knowledge and educate people about web development through quality content. To bring this beautiful piece of technology to life, I will use Ruby on Rails.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails 7.1.2</a></li>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>

### Key Features <a name="key-features"></a>

- **Right now it is under construction.**



<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

[Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)

### Setup

```sh
cd my-folder
git clone https://github.com/Alejandroq12/juliodev-blog.git
```

### Install

Install all necessary dependencies listed in the `Gemfile`.

```sh
bundle install
```

Install all necessary dependencies listed in the `package.json`.

```sh
npm install
```

### Database

Important: please, rename .env.example to .env and fill out all necessary fields otherwise you will be able to connect to the database.

Before running the migrations and seeds, ensure that PostgreSQL is installed and running:

```sh
sudo service postgresql start
```

Run migrations:

```sh
rails db:migrate
```

Add the seeds(omit it for this project):

```sh
rails db:seed
```

### Usage

To run the project, navigate to the project directory and execute the following command:

```sh
rails server
```

### Run tests

To run tests, run the following command:

```sh
rubocop
```

### Deployment

You can deploy this project using:

Not available at the moment.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Authors <a name="authors"></a>

👤 **Julio Quezada**

- GitHub: [Alejandroq12](https://github.com/Alejandroq12)
- Twitter: [@JulioAle54](https://twitter.com/JulioAle54)
- LinkedIn: [Julio Quezada](https://www.linkedin.com/in/quezadajulio/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [x] **Creating a data model.**
- [ ] **Validations and Model specs.**
- [ ] **Processing data in models.**
- [ ] **Controllers.**
- [ ] **Controllers specs.**
- [ ] **Views.**
- [ ] **Forms.**
- [ ] **Integration specs for Views and fixing n+1 problems.**
- [ ] **Add Devise.**
- [ ] **Add authorization rules.**
- [ ] **Add API endpoints.**
- [ ] **API documentation.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please give a star.
Thanks in advance.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank all of my colleagues who inspire to do my best everyday.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

**What did you learn?**

- I will answer this question once I have made 20% progress on this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
