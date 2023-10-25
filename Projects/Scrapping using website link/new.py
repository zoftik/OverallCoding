from selectolax.parser import HTMLParser
import httpx
from dataclasses import dataclass, asdict


@dataclass
class product:
    product_code: str
    price: str
    title: str


def get_html(page):
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36'}
    url = f'https://www.newlook.com/row/womens/clothing/c/row-womens-clothing#/?q=:relevance&page={page}&sort=relevance&content=false'
    resp = httpx.get(url, headers=headers)
    return HTMLParser(resp.text)


def parse_products(html):
    products = html.css("h1.class")

    result = []
    for item in products:
        new_item = Product(
            title=item.css_first("class.product-description__name").text(),
            price=item.css_first("class.product-description__prices").text(),
            product_code=item.css_first(
                "class.product-details--product-code").text(),
        )
        print(new_item)


def main():
    for x in range(1, 5):
        html = get_html(x)
        print(html.css_first("title").text())
        parse_products(html)


if __name__ == '__main__':
    main()
