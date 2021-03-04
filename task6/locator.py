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