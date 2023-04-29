# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class SsqItem(scrapy.Item):
    def __setitem__(self, key, value):
        if key not in self.fields:
            self.fields[key] = scrapy.Field()
        self._values[key] = value
