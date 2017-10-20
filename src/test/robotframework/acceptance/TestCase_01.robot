*** Settings ***
Documentation  A resource file containing the application specific keywords
Library		Selenium2Library
Resource  ${CURDIR}/CommonResource.robot
Library  robotdemo.ub.robot.SearchKeyWords


*** Variables ***


*** Test Cases ***
Showing custom keyword
  Hello custom keyword
	
Open google and search,verify search item is displayed on search result
  Open browser and search
Title should be Robot Framework	
  Matched Page Title
Match header title to Robot Framework
  Matched header title
Location should be Robot framework web adress
  Matched Location
Closing the browser
  Close all browser
#[Teardown]  Close Browser
	
	
*** KeyWords ***
Hello custom keyword
  Hello  world
Open browser and search	
	Open Browser  ${URL}  ${browser}
	Maximize browser window
	Title should be  Google
	Element Should Be Enabled  css=input#lst-ib
	Click Element  css=input#lst-ib
	Input Text  css=input#lst-ib  ${searchItem}	
	Click Element  css=div#lga 
	Click Element  name=btnK
	Click Link  link=Robot Framework
	Page Should Contain  Robotframework
Matched Page Title
  Title should be  Robot Framework
Matched header title  
  Header  Robot framework
Matched Location
  Location should be  ${ROBOT_URL}
	
Close all browser 
	Close Browser	
