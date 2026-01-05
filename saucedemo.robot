*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.saucedemo.com/
${BROWSER}  Chrome
${OPTIONS}    --headless --no-sandbox --disable-dev-shm-usage
${USER}     standard_user
${PASS}     secret_sauce

*** Test Cases ***
Login Com Sucesso
    Open Browser    https://www.saucedemo.com    chrome    options=--headless=new --no-sandbox --disable-dev-shm-usage
    Input Text      id:user-name    ${USER}
    Input Text      id:password     ${PASS}
    Click Button    id:login-button
    Page Should Contain    Products
    Close Browser

Checkout Com Sucesso
    Open Browser    ${URL}   ${BROWSER}
    Maximize Browser Window

    # Login
    Input Text      id:user-name    ${USER}
    Input Text      id:password     ${PASS}
    Click Button    id:login-button

    # Adicionar produto
    Click Button    id:add-to-cart-sauce-labs-backpack
    Click Element   class:shopping_cart_link

    # Checkout
    Click Button    id:checkout
    Input Text      id:first-name    João
    Input Text      id:last-name     Silva
    Input Text      id:postal-code   12345
    Click Button    id:continue
    Wait Until Page Contains    Checkout: Overview    10s
    Click Button  id=finish

    Page Should Contain    Thank you for your order!

    Close Browser



