*** Variables ***
${StatisticMenu} =    (//nav//a[contains(text(),'Statistics')])[1]
${TotalFund}=     (//div[@class='statisticDetailRow']//div)[1]
${NoOfFinancing}=    (//div[@class='statisticDetailRow']//div)[2]
${DefaultRate}=    (//div[@class='statisticDetailRow']//div)[3]
${FinancingRate}=    (//div[@class='statisticDetailRow']//div)[4]
${RepaymentBtn}=    //*[contains(@class,'progressGraphicContainer')]//button[contains(text(),'Repayment')]
${DisbursementBtn}=    //*[contains(@class,'progressGraphicContainer')]//button[contains(text(),'Disbursement')]
