import argparse
import pandas as pd
from bs4 import BeautifulSoup


def scrape_data(html_filename):
    # Parse the HTML file
    soup = BeautifulSoup(open(html_filename), 'html.parser')

    # Scraping logic (your find_all_wrapper function)
    a = []
    for li in soup.find_all(class_="plp-item"):
        a.append(li.a.get('href'))
    return a


def process_data(input_list):
    # Initialize an empty list to store data
    data = []

    # Process the data
    for item in input_list:
        last_9 = item[-9:]
        data.append([item, last_9])

    return data


def main():
    # Parse command-line arguments
    parser = argparse.ArgumentParser(
        description='Scrape and process data from an HTML file.')
    parser.add_argument('html_file', help='Input HTML file name')
    parser.add_argument('output_csv', help='Output CSV file name')
    args = parser.parse_args()

    # Scrape the data
    input_list = scrape_data(args.html_file)

    # Process the data
    data = process_data(input_list)

    # Create a DataFrame
    df = pd.DataFrame(data, columns=["Original String", "Last 9 Digits"])

    # Add the prefix
    prefix = 'https://www.newlook.com'
    df['Original String'] = df['Original String'].apply(lambda x: prefix + x)

    # Export to CSV
    df.to_csv(args.output_csv, index=False)

    print(f"CSV file created as '{args.output_csv}' in same path.")


if __name__ == "__main__":
    main()
