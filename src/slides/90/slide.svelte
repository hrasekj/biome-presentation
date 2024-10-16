<!-- <script module>
  import { defineProps } from '@animotion/core'
  import langSup from '$lib/assets/language-support.png'

  export const props = defineProps({
    class: 'h-full pt-44 pb-24 px-24',
  })
</script> -->

<script lang="ts">
  import MainContent from '$lib/components/MainContent.svelte'
  import { Transition, Code, Action } from '@animotion/core'

  let code: ReturnType<typeof Code>
</script>

<MainContent title="Konfigurace">
  <div class="bg-[#282c34] p-6">
    <Code
      bind:this={code as any}
      lang="json"
      theme="one-dark-pro"
      code={`{
  "$schema": "https://biomejs.dev/schemas/1.9.3/schema.json"
}`}
      options={{ duration: 600, stagger: 0.3, containerStyle: false }}
    />
  </div>

  <Action
    do={async () => {
      await code.update`{
  "$schema": "https://biomejs.dev/schemas/1.9.3/schema.json",
  "files": {
    "include": ["src/**/*.ts", "src/**/*.js"],
    "ignore": ["node_modules", "dist", "**/*.svelte"]
  }
}`
      await code.selectLines`3-6`
    }}
  />

  <Action
    do={async () => {
      await code.update`{
  "$schema": "https://biomejs.dev/schemas/1.9.3/schema.json",
  "files": {
    "include": ["src/**/*.ts", "src/**/*.js"],
    "ignore": ["node_modules", "dist", "**/*.svelte"]
  },
  "vcs": {
    "enabled": true,
    "clientKind": "git",
    "useIgnoreFile": true,
    "defaultBranch": "master"
  },
}`
      await code.selectLines`7-12`
    }}
  />

  <Action
    do={async () => {
      await code.selectLines`5,10`
      await code.update`{
  "$schema": "https://biomejs.dev/schemas/1.9.3/schema.json",
  "files": {
    "include": ["src/**/*.ts", "src/**/*.js"],
    "ignore": ["**/*.svelte"]
  },
  "vcs": {
    "enabled": true,
    "clientKind": "git",
    "useIgnoreFile": true,
    "defaultBranch": "master"
  },
}`
    }}
  />

  <Action
    do={async () => {
      await code.update`{
  // ...
  "formatter": {
    "enabled": true,
  },
  "linter": {
    "enabled": true,
    "rules": {
      "recommended": true,
    },
  },
  "organizeImports": {
    "enabled": true,
  },
}`
      await code.selectLines`3,6,12`
    }}
  />

  <Action
    do={async () => {
      await code.update`{
  // ...
  "formatter": {
    "enabled": true,
    "include": ["*.config.js"],
    "ignore": [],
    "formatWithErrors": true,
    "indentStyle": "space",
    "indentWidth": 2,
    "lineEnding": "lf",
    "lineWidth": 100,
    "attributePosition": "auto",
    "useEditorconfig": true,
  },
}`
      await code.selectLines`4-6`
    }}
  />

  <Action do={() => code.selectLines`7-13`} />

  <Action
    do={async () => {
      await code.update`{
  // ...
  "linter": {
    "rules": {
      "correctness": {
        "noUnusedImports": {
          "level": "error",
          "fix": "none",
        },
        "useExhaustiveDependencies": "warn",
      },
      "style": {
        "noYodaExpression": "warn"
      },
    },
  },
}`
    }}
  />

  <Action do={() => code.selectLines`5,11`} />
  <Action do={() => code.selectLines`6-9`} />
  <Action do={() => code.selectLines`10`} />

  <Action
    do={async () => {
      await code.update`{
    // ...
    "extends": ["@qest/project-config/biome", "./common.biome.json"],
    // ...
  }`
    }}
  />

  <Action
    do={async () => {
      await code.update`{
  // ...
  "overrides": [
    {
      "include": ["types.gen.ts", "services.gen.ts"],
      "linter": {
        "enabled": false,
      },
      "organizeImports": {
        "enabled": false,
      },
    },
  ],
}`
      await code.selectLines`*`
    }}
  />
</MainContent>
