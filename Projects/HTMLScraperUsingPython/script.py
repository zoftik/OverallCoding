import pandas as pd
import re
import requests

# Function to scrape product codes
def scrape_product_codes(url, user_agent):
    try:
        headers = {'User-Agent': user_agent}
        response = requests.get(url, headers=headers)
        response.raise_for_status()
        page_source = response.text

        # Use regular expressions to extract product codes
        product_codes = re.findall(r'"productCode":"(\d+)"', page_source)

        return product_codes

    except Exception as e:
        print(f"An error occurred: {str(e)}")
        return []

if __name__ == '__main__':
    # URL of the webpage to scrape
    base_url = 'https://www.newlook.com/row/womens/clothing/trousers/c/row-womens-clothing-trousers#/?q=:relevance&page=1&sort=relevance&content=false'

    # User agent for the request
    user_agent = 'Your User Agent Here'

    # Get product codes from the webpage
    product_codes = scrape_product_codes(base_url, user_agent)

    if product_codes:
        # Create a DataFrame from the product codes
        df = pd.DataFrame({"Product Code": product_codes})

        # Save the DataFrame to a CSV file
        df.to_csv("newlook_product_codes.csv", index=False)

        print(f"Product codes saved to 'newlook_product_codes.csv'")
    else:
        print("No product codes found.")
