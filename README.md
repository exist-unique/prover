# Formal Math Provers


[![GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/exist-unique/prover)


Download the [VS Code](https://code.visualstudio.com/) code editor and install the [GitHub Codespaces extension](https://marketplace.visualstudio.com/items?itemName=GitHub.codespaces). Codespaces is a cloud platform offered by GitHub which we will use to interact with the formal math provers. Create a Codespace on this repository by following the [documentation](https://docs.github.com/en/codespaces/developing-in-a-codespace/using-github-codespaces-in-visual-studio-code).

The default GitHub Codespaces settings is such that idle spaces shuts down after a set amount of time, and inactive spaces are deleted. Make sure you [adjust the settings](https://docs.github.com/en/codespaces/developing-in-a-codespace/stopping-and-starting-a-codespace?tool=webui), and commit your files to your repo regularly to prevent accidental deletion.

There are many formal theorem provers such as Isabelle and Rocq, but we will focus on Lean due to the extensive open source community and relative ease of interaction. You can run these provers with Docker, but we will just install them, focusing on Lean. Isabelle and Rocq can be similarly installed by following instructions on their websites. 

```bash
# Install Lean 
curl https://elan.lean-lang.org/elan-init.sh -sSf | sh 
echo 'export PATH=$HOME/.elan/bin:$PATH' >> $HOME/.bashrc 
source $HOME/.elan/env 
```

To create a Lean project titled `learn_lean` with Mathlib installed we run
```bash
lake new learn_lean math 
```

There is also a [VS Code extension](https://marketplace.visualstudio.com/items?itemName=leanprover.lean4) for interactive development.

To build the project
```bash
cd learn_lean
lean build
```

To run a particular file you may define an executable in `lakefile.toml`

```toml
[[lean_exe]]
name = "name_of_execuable"
root = "Project.To.Your.File"
```

Afterwwards you build and run
```bash
lean build
lake exe name_of_execuable
```

Alternatively you can run a single file with 

```bash
lake env lean --run file_path_here.lean
```




