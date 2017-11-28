import kivy
from kivy.app import App
from kivy.uix.widget import Widget


class Custom_Widget(Widget):
    pass


class CustomWidgetApp(App):
    def build(self):
        return Custom_Widget()


customWidget = CustomWidgetApp()
customWidget.run()