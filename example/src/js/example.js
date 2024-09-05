import { capacitorGpsEnableIos } from 'capacitor-gps-enable-ios';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    capacitorGpsEnableIos.echo({ value: inputValue })
}
