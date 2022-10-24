# UI automation test
## Getting started (this instruction for Visual Studio only, it may works with Pycharm, but I'm not sure either)
- Please ensure that your machine has python installed, and check it by cmd:  `python3 --version`
- Install pipenv for your machine `https://pipenv.pypa.io/en/latest/`
- Clone code in this repo
- Open with your IDE, in my case is VS code
- Activate your virtual environment by using pipenv shell, why do we need this: `https://realpython.com/python-virtual-environments-a-primer/`
- Run this cmd in your terminal: `PIPENV_VENV_IN_PROJECT=1 pipenv shell` 
- After virtualizition env is activated successfully, run this cmd: `pip install --upgrade robotframework-seleniumlibrary`
- Then install webdriver manager by this: `pip install webdrivermanager` 
- This test will run with Chrome, so download driver: `webdrivermanager chrome` 
## Run tests by this cmd:
- Run homepage tests: `robot -d Results Tests/VerifyHomePage.robot` 
- Run all tests by this cmd: `robot -d Results Tests` 
- Test report name `report.html` in Results folde

## The reason why I'm choosing Robot framework:
- Actually I'm more familiar with Python, pytest and Selenium but for demo only and fast setup Robotframework can be a good choice
- Another advantage sites of Robotframework is Robotframework like human reading docs so I don't need too much time to explain my code
- Robotframework also has lots of plugins to support automation test like Selenium library, appium library
- But if working long enough with Robotframework, there will be some limitation like customization, and we need take more effort to customize it. Another thing is that Robotframework does not support parameterized testing so code maybe wordy for just changing the parameters.
## The code structure:
- I'm using Page object model to build this framework, every page in site will consider a model for its test.
- There is BasePage.robot class to hold all common methods will share among pages like click something, go to somewhere that will use in many pages
- I also avoid test flaky by if I need to test in a page, I will let tests go directly to that page, instead of click to get that page