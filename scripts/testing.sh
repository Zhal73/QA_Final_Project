#! /bin/bash

ng test

# end-to-end tests via Protractor
sudo webdriver-manager start
ng serve
ng e2e