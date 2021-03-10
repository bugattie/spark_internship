from selenium.webdriver.support.color import Color
from locator import *
from time import sleep
import requests as req


class BasePage(object):
    def __init__(self, driver):
        self.driver = driver

    def is_logo_dispalyed(self):
        logo = self.driver.find_element(*MainPageLocator.LOGO)
        return logo.is_displayed()

    def navbar_appears(self):
        navbar = self.driver.find_element(*MainPageLocator.NAVBAR)
        return navbar.is_displayed()

class MainPage(BasePage):

    def is_title_matches(self):
        return "Home" in self.driver.title

    def slider_clickable(self):
        slider = self.driver.find_elements(*MainPageLocator.SLIDER_LINKS)
        words = ['Events', 'Internships', 'Mentorship', 'Support', 'Scholarship', 'Community']
        matches = []

        for i in range(len(slider)):
            sleep(1)
            slider[i].click()
            word_from_web = self.driver.find_element(*MainPageLocator.WORD).get_attribute('innerHTML')
            matches.append(word_from_web in words)
            if matches[i] == False:
                print(f'{word_from_web} is not found.')
            sleep(1)
        
        return True

    def scrollable_btn(self):
        self.driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        sleep(1)
        scroll_up = self.driver.find_element(*MainPageLocator.UP_BTN)
        scroll_up.click()
        sleep(2)
        return True

class AboutUsPage(BasePage):
    def check_advisors_image(self):
        advisor_images = self.driver.find_elements(*AboutUsPageLocator.ADVISORS_IMAGES)
        advisor_details = self.driver.find_elements(*AboutUsPageLocator.ADVISORS_DETAILS)
        for i in range(len(advisor_images)):
            if (advisor_images[i].is_displayed()):
                print(f"{advisor_details[i].text} image is displaying.")
            else:
                print(f"{advisor_details[i].text} image is not displaying")
        return True

class WorkshopPage(BasePage):
    def heading_test(self):
        heading_element = self.driver.find_element(*WorkShopPageLocator.WORKSHOP_HEADING)
        return "Workshops" in heading_element.text

    def upcoming_workshop_btn_test(self):
        workshops_title = self.driver.find_elements(*WorkShopPageLocator.WORKSHOP_TITLE_ELEMENT)
        color_to_match = '#1bb4b9'
        for i in range(len(workshops_title)):
            rgb = workshops_title[i].value_of_css_property('background')
            hex_value = Color.from_string(rgb[:17]).hex
            if color_to_match == hex_value:
                continue
            else:
                print('Color are not the same')
        return True

    def scroll_btn(self):
        btn_element = self.driver.find_element(*WorkShopPageLocator.BTN_ELEMENT)
        if btn_element.is_displayed():
            return True
        else:
            print('Scroll button is missing')
            return False

    def footer_appearance(self):
        footer_element = self.driver.find_element(*WorkShopPageLocator.FOOTER_ELEMENT)
        if footer_element.is_displayed():
            return True;
        else:
            print('Footer is not being displayed at workshop page');
            return False;
