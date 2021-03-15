from selenium.webdriver.support.color import Color
from locator import *
from time import sleep
import requests as req

def linkTest(element):
    fail_count = 0
    for i in range(len(element)):
        if req.head(element[i].get_attribute('href')).status_code == 200:
            print(f"{element[i].get_attribute('href')} is a valid link")
        else:
            fail_count = fail_count + 1
            print(f"{element[i].get_attribute('href')} is a broken link")
    print(f"{fail_count} links are broken out of {len(element)}")
    return True

class BasePage(object):
    def __init__(self, driver):
        self.driver = driver

    def is_logo_dispalyed(self):
        logo = self.driver.find_element(*AllPageLocators.LOGO)
        if logo.is_displayed():
            print('Logo is appearing.')
            return True
        else:
            print('Logo is not appearing.')
            return False
        
    def navbar_appears(self):
        navbar = self.driver.find_element(*AllPageLocators.NAVBAR)
        if navbar.is_displayed():
            print('Navbar is appearing.')
            return True
        else:
            print('Navbar is not appearing.')
            return False

class MainPage(BasePage):
    def is_title_matches(self):
        if "Home" in self.driver.title:
            print('Title matches')
            return True
        else:
            print('Title is not the same')
            return False

    def slider_clickable(self):
        words = ['Events', 'Internships', 'Mentorship', 'Support', 'Scholarship', 'Community']
        matches = []
        slider = self.driver.find_elements(*MainPageLocator.SLIDER_LINKS)
        for i in range(len(slider)):
            sleep(1)
            slider[i].click()
            word_from_web = self.driver.find_element(*MainPageLocator.WORD).get_attribute('innerHTML')
            matches.append(word_from_web in words)
            if matches[i] == False:
                print(f'{word_from_web} is not found.')
            else:
                print('Slider element working')
            sleep(1)
        return True

    def scrollable_btn(self):
        self.driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        sleep(1)
        scroll_up = self.driver.find_element(*MainPageLocator.UP_BTN)
        scroll_up.click()
        print('Scroll button is working')
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
        if "Workshops" in heading_element.text:
            print('Element text matches')
            return True
        else:
            print('Element text is not the same')
            return False

    def upcoming_workshop_btn_test(self):
        workshops_title = self.driver.find_elements(*WorkShopPageLocator.WORKSHOP_TITLE_ELEMENT)
        color_to_match = '#1bb4b9'
        for i in range(len(workshops_title)):
            rgb = workshops_title[i].value_of_css_property('background')
            hex_value = Color.from_string(rgb[:17]).hex
            if color_to_match == hex_value:
                print(f'Colors for element is same as {color_to_match}')
            else:
                print('Color are not the same')
        return True

    def scroll_btn(self):
        btn_element = self.driver.find_element(*WorkShopPageLocator.BTN_ELEMENT)
        if btn_element.is_displayed():
            print('Scroll button is appearing')
            return True
        else:
            print('Scroll button is missing')
            return False

    def footer_appearance(self):
        footer_element = self.driver.find_element(*WorkShopPageLocator.FOOTER_ELEMENT)
        if footer_element.is_displayed():
            print('Footer is appearing');
            return True;
        else:
            print('Footer is not being displayed at workshop page');
            return False;

class JoinUsPage(BasePage):
    def footer_links(self):
        footer_link_elements = self.driver.find_elements(*JoinUsPageLocator.FOOTER_LINKS)
        return linkTest(footer_link_elements)

class LinkPage(BasePage):
    def JoinUSLinks(self):
        join_link_elements = self.driver.find_elements(*LinkPageLocator.RIGHT_CONTENT_LINKS)
        return linkTest(join_link_elements)

    def HeadLinkTest(self):
        heading_elements = self.driver.find_elements(*LinkPageLocator.HEAD_LINK)
        return linkTest(heading_elements)

    def BtnLinkTest(self):
        btn_element = self.driver.find_elements(*LinkPageLocator.BTN_LINK)
        for i in range(len(btn_element)):
            if i == 1 or i == 3:
                if req.head(btn_element[i].get_attribute('href')).status_code == 200:
                    print(f"{btn_element[i].get_attribute('href')} is a valid link")
                else:
                    print(f"{btn_element[i].get_attribute('href')} is a broken link")
        return True