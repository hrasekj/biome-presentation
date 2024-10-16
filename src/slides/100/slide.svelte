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
  <Transition>
    <div class="bg-[#282c34] p-6">
      <Code
        bind:this={code as any}
        lang="shell"
        theme="one-dark-pro"
        code={`# .husky/pre-commit
./node_modules/.bin/biome check --staged --no-errors-on-unmatched`}
        options={{ duration: 600, stagger: 0.3, containerStyle: false }}
      />
    </div>
  </Transition>

  <Transition class="pt-6">
    <div class="bg-[#282c34] p-6">
      <Code
        bind:this={code as any}
        lang="json"
        theme="one-dark-pro"
        code={`// package.json
{
  "scripts": {
    "lint:check": "biome lint",
    "lint:fix": "biome lint --write --unsafe",
    "prettier:check": "biome check --linter-enabled=false",
    "prettier:fix": "biome check --linter-enabled=false --write",
    "code:check": "concurrently \\"biome ci\\" \\"yarn build:check\\"",
    "code:fix": "biome check --write --unsafe"
  }
}`}
        options={{ duration: 600, stagger: 0.3, containerStyle: false }}
      />
    </div>
  </Transition>
</MainContent>
