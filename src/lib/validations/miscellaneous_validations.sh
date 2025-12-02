validate_port_number() {
  if [[ ! $1 =~ ^([1-9]|[1-9][0-9]{1,3}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])$ ]]; then
    red_bold "The port number provided is invalid: $1"
  fi
}

validate_device_exists () {
  [[ -e /dev/sde ]] || red_bold "The specified device does not exist: $1"
}
