class MobileNavbar {
  constructor(mobileMenu, navList, navLinks) { /* adicionando variaveis e definindo elas */
    this.mobileMenu = document.querySelector(mobileMenu);
    this.navList = document.querySelector(navList);
    this.navLinks = document.querySelectorAll(navLinks);
    this.activeClass = "active";

    this.handLeClick = this.handLeClick.bind(this);
  }
  animadeLinks(){
    this.navLinks.forEach((link,index) =>{ /* forEach vai falando com o link individualmente */
      
    link.style.animation 
        ? (link.style.animation = "") /* operador logico "?" ele é um if junto com o else que é o ":" então eles dois se transformam no if, else */
         : (link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.3}s`);
    })
  }
  

  handLeClick (){
    this.navList.classList.toggle(this.activeClass);
    this.mobileMenu.classList.toggle(this.activeClass);
    this.animadeLinks(); /* toda vez que alguem cliclar vai ter a a animação */

  }
  
  addClickEvent() {
    this.mobileMenu.addEventListener("click", this.handLeClick);
  }

  init() {
    if (this.mobileMenu) {
      this.addClickEvent();
    }
    return this;
  }
}

const mobileNavbar = new MobileNavbar(
  ".mobile-menu",
  ".nav-list",
  ".nav-list li",
);
mobileNavbar.init();


