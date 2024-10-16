<script lang="ts">
  import type { Snippet } from 'svelte'

  type Props = {
    el?: HTMLHeadingElement
    children: Snippet
  }

  let { el = $bindable(), children }: Props = $props()
</script>

<h1 bind:this={el} class="text-8xl transition-[font-size]">{@render children()}</h1>
