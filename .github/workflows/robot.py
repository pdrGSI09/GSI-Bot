# Thank s to github.com/usernein

import os
import pyrogram

with open('Aonly.txt') as f:
    os.environ['CAT_FILE'] = f.read()

rom = os.getenv('ROM')
zip = os.getenv('ZIP_NAME')
cat = os.getenv('CAT_FILE')
romlink = os.getenv('ROM_LINK')
da = os.getenv('DOWNLOAD_A')
dab = os.getenv('DOWNLOAD_AB')

with pyrogram.Client('bot', os.getenv('API_ID'), os.getenv('API_HASH'), bot_token=os.getenv('TOKEN')) as client:
    client.send_message(
        text=f"""<b>{rom} GSI For A/AB Devices</b>

<b>Firmware Base:</b> <a href="{romlink}">HERE</a>

<b>Information:</b>
<code>{cat}</code>

<b>Download A-Only:</b> <a href="{da}">HERE</a>
<b>Download A/B:</b> <a href="{dab}">HERE</a>

<b>Thanks to: <a href="https://github.com/erfanoabdi/ErfanGSIs/graphs/contributors">Contributors List</a>

Join our discussion group: @JamieWonderland
Join our channel : @JamieGSI
Donations: <a href="paypal.com/JamieHoSzeYui">Here</a>
Join our partner channel : @ruigsi

<b> Enjoy ! </b>

<a href="https://github.com/JamieHoSzeYui/ErfanGSIs">Ported using ErfanGSIs Tool, Jamie's mod</a>""",
        chat_id=os.getenv('CHAT_ID'),
        parse_mode="html",
        disable_web_page_preview=True
    )
    

