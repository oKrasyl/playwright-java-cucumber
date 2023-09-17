Feature: Verify Alerts, Frame & Windows Page

  @smoke
  Scenario Outline: Verify User is able to handle pop up windows, frames and alerts
    Given user navigates to "url"
    When user clicks on "Alerts, Frame & Windows" icon in main page
    And user clicks "Browser Windows" navbar option in Alerts, Frame & Windows page
    Then verify "https://demoqa.com/sample" is url of new tab opened in Browser Windows section in Alerts, Frame & Windows page
    And verify "https://demoqa.com/sample" is url of new window opened in Browser Windows section in Alerts, Frame & Windows page
    When user clicks "Alerts" navbar option in Alerts, Frame & Windows page
    And user enters <text> text and accept the alert in Alerts section in Alerts, Frame & Windows page
    Then verify <text> text is accepted in alert in Alerts section in Alerts, Frame & Windows page
    When user clicks "Frames" navbar option in Alerts, Frame & Windows page
    Then verify "This is a sample page" as frame content in Frames section in Alerts, Frame & Windows page
    When user clicks "Nested Frames" navbar option in Alerts, Frame & Windows page
    Then verify Nested Child frame is displayed in Nested Frames section in Alerts, Frame & Windows page

    Examples:
      | text    |
      | "Hello" |
      | "Bye"   |