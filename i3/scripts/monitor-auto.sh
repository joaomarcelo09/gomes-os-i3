# Nome das saídas, ajuste conforme o seu setup
EXTERNAL_OUTPUT="HDMI1"   # Substitua pelo nome do monitor externo (ex: HDMI-1, DP-1)
INTERNAL_OUTPUT="eDP1"    # Substitua pelo nome da tela do notebook (ex: eDP-1)

# Verifica se o monitor externo está conectado
if xrandr | grep "$EXTERNAL_OUTPUT connected"; then
    xrandr \
  --output "$EXTERNAL_OUTPUT" --mode 2560x1080 --rate 75 --primary \
  --output "$INTERNAL_OUTPUT" --mode 1600x900 --left-of $EXTERNAL_OUTPUT

else
    # Liga apenas o monitor do notebook
    xrandr --output $INTERNAL_OUTPUT --mode 1600x900 --output $EXTERNAL_OUTPUT --off

fi
