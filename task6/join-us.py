from selenium import webdriver
import unittest
import page


class SparkJoinUsPageTest(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Chrome()
        self.driver.get('https://www.thesparksfoundationsingapore.org/join-us/why-join-us/')
        self.driver.implicitly_wait(5)

    def test_logo(self):
        join_us_page = page.WorkshopPage(self.driver)
        assert join_us_page.is_logo_dispalyed()

    def test_navbar_appears(self):
        join_us_page = page.WorkshopPage(self.driver)
        assert join_us_page.navbar_appears()

    def test_footer_links(self):
        join_us_page = page.JoinUsPage(self.driver)
        assert join_us_page.footer_links()

    def tearDown(self):
        self.driver.close()

if __name__ == '__main__':
    unittest.main()
