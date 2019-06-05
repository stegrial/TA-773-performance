@Test
    public void Test2() throws InterruptedException {
        driver.get("https://www.facebook.com");
        driver.findelement(emailfl).sendkeys("eshapovalov298@gmail.com");
        driver.findElement(passFl).sendKeys("Tester1234");
        driver.findElement(loginBtn).click();
        driver.findElement(myNameLink).click();

        WebElement element1 = driver.findElement(profilePhotoImg);
        Assert.assertTrue(element1.isDisplayed(), "The Profile page is not opened");

        driver.findElement(homeBtn).click();

        WebElement element2 = driver.findElement(userNavBtn);
        Assert.assertTrue(element2.isDisplayed(), "The Home page is not opened");

        driver.findElement(postBox).click();

        WebDriverWait wait1 = new WebDriverWait(driver, 10);
        wait1.until(ExpectedConditions.visibilityOfElementLocated(sendPresentationBtn));

        WebElement element = driver.findElement(presentation);
        Actions act = new Actions(driver);
        act.moveToElement(element).click().sendKeys("Hello world").build().perform();

        driver.findElement(sendPresentationBtn).click();

        WebDriverWait wait2 = new WebDriverWait(driver, 10);
        wait2.until(ExpectedConditions.visibilityOfElementLocated(presentTextHW));

        driver.findElement(threePointsOptionsBtn).click();
        driver.findElement(deletePostLink).click();

        WebDriverWait wait3 = new WebDriverWait(driver, 10);
        wait3.until(ExpectedConditions.visibilityOfElementLocated(deleteBtn));

        driver.findElement(deleteBtn).click();
        Thread.sleep(5000);
