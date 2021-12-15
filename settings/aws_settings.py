from settings.settings import Settings


class AWSSettings(Settings):

    def __init__(self):
        super().__init__()
        self.raw_bucket = 'data-pipeline-demo-raw'
        self.enriched_bucket = 'data-pipeline-demo-enriched'
