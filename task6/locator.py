from selenium.webdriver.common.by import By


class MainPageLocator(object):
    LOGO = (By.CSS_SELECTOR, 'a.navbar-brand img')
    NAVBAR = (By.CSS_SELECTOR, 'div.container nav.navbar.navbar-default')
    SLIDER_LINKS = (By.CSS_SELECTOR, 'div.flexslider ol li a')
    WORD = (By.CSS_SELECTOR, 'li.flex-active-slide div h3')
    UP_BTN = (By.ID, 'toTopHover')
    F_PARA = (By.CSS_SELECTOR, 'div.copyright-wthree p')

class AboutUsPageLocator(object):
    ADVISORS_IMAGES = (By.CSS_SELECTOR, 'div.single-middle a')
    ADVISORS_DETAILS = (By.CSS_SELECTOR, 'div.single-middle div.media-body h4')

class WorkShopPageLocator(object):
    WORKSHOP_HEADING = (By.CSS_SELECTOR, 'div.container h2.inner-tittle-w3layouts')
    WORKSHOP_TITLE_ELEMENT = (By.CSS_SELECTOR, 'div.blog-info a.button-w3layouts.hvr-rectangle-out')
    BTN_ELEMENT = (By.ID, 'toTop')
    FOOTER_ELEMENT = (By.CSS_SELECTOR, 'div.footer.w3layouts')

class JoinUsPageLocator(object):
    FOOTER_LINKS = (By.CSS_SELECTOR, 'div.col-md-3.footer-grids.w3l-agileits ul.b-nav li a')