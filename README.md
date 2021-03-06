# hue-cli

[![NPM version](https://img.shields.io/npm/v/@sinedied/hue-cli.svg)](https://www.npmjs.com/package/@sinedied/hue-cli)
![Node version](https://img.shields.io/badge/node-%3E%3D5.0.0-brightgreen.svg)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

> Simple command line interface for Philips Hue.

## Installation

```bash
npm install -g @sinedied/hue-cli
```

### Usage

```
Usage: hue [setup|lights|scene|on|off]

Commands:
  setup            Configure hue bridge or show current config
    -l, --list     List bridges on the network
    -i, --ip       Set bridge ip (use first bridge if not specified)
    --force        Force setup if already configured

  l, light         Set or list lights attached to the bridge
    -l, --list     List all the lights
    -s, --set      Set a light state by passing it --id and --state
    --id           Light id you are setting
    --state        Set light to this state JSON

  s, scene <name>  Activate scene starting with <name>
    -l, --list     List scenes, using <name> as optional filter
    -m, --max <n>  Show at most <n> scenes when listing (10 by default)
    -c, --create   Create scene <name> using current lights state

  i, on            Switch all lights on  
  o, off           Switch all lights off
```

### CLI Examples

#### hue setup

Press button on your hue bridge and run:
```
hue setup
```

#### hue light

Set your brightness of light ID 3 to 200:
```
hue l -s --id 3 --state '{"bri":200}'
```

### Fun Scripted Examples

To use bash examples update the /examples/lights.txt with a list of light IDs you want to use.  These bash scripts use the CLI to show a couple fun patterns with the lights you have in the list.

```
cd examples
./circle_5_times.sh
./dim_then_back_to_bright.sh
```
