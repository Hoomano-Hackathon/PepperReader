<?xml version="1.0" encoding="UTF-8" ?>
<Package name="PepperReader" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="ExampleDialog" src="behavior_1/ExampleDialog/ExampleDialog.dlg" />
        <Dialog name="test" src="test/test.dlg" />
    </Dialogs>
    <Resources>
        <File name="golf" src="behavior_1/golf.ogg" />
        <File name="move" src="behavior_1/move.pmt" />
        <File name="vacuum1" src="behavior_1/vacuum1.ogg" />
        <File name="surprise3" src="behavior_1/surprise3.ogg" />
        <File name="elephant" src="behavior_1/elephant.ogg" />
        <File name="swiftswords_ext" src="behavior_1/swiftswords_ext.mp3" />
        <File name="index" src="html/index.html" />
        <File name="script" src="html/script.js" />
        <File name="choice_sentences" src="behavior_1/Aldebaran/choice_sentences.xml" />
        <File name="database1" src="database1.vrd" />
        <File name="fond_ecran" src="html/image/fond_ecran.jpg" />
        <File name="fond_ecran.jpg" src="html/image/fond_ecran.jpg.bak" />
        <File name="_metadata" src="_metadata" />
    </Resources>
    <Topics>
        <Topic name="ExampleDialog_enu" src="behavior_1/ExampleDialog/ExampleDialog_enu.top" topicName="ExampleDialog" language="en_US" />
        <Topic name="ExampleDialog_frf" src="behavior_1/ExampleDialog/ExampleDialog_frf.top" topicName="ExampleDialog" language="fr_FR" />
        <Topic name="test_frf" src="test/test_frf.top" topicName="test" language="fr_FR" />
    </Topics>
    <IgnoredPaths />
    <Translations auto-fill="en_US">
        <Translation name="translation_en_US" src="translations/translation_en_US.ts" language="en_US" />
        <Translation name="translation_fr_FR" src="translations/translation_fr_FR.ts" language="fr_FR" />
    </Translations>
</Package>
