from selenium import webdriver
from selenium.webdriver.common.by import By
from time import sleep

driver = webdriver.Chrome()
driver.get('https://www.thesparksfoundationsingapore.org/')

navbar = driver.find_element_by_css_selector('div.container nav.navbar.navbar-default')
print(navbar.is_displayed())

sleep(3)
driver.close()