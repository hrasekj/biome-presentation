<script lang="ts">
  import type { Snippet } from 'svelte'
  type Props = { title: string; children: Snippet }
  let { title, children }: Props = $props()
</script>

<div class="absolute inset-0 z-0 flex flex-col p-24">
  <div class="flex w-full items-center justify-between">
    <p class="text-5xl">{title}</p>

    <img
      alt="Biome Logo"
      src="https://raw.githubusercontent.com/biomejs/resources/refs/heads/main/svg/slogan-dark-transparent.svg"
      class="block h-auto max-w-64"
    />
  </div>
  <div class="flex-1"></div>
</div>

{@render children()}
