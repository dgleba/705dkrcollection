from channels.consumer import SyncConsumer


class blogapp3Consumer(SyncConsumer):

    def app1_message(self, message):
        # do something with message
        pass