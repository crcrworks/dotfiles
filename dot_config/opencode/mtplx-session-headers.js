const mtplxProviderID = (input) =>
  input?.model?.providerID || input?.provider?.id;

export const MTPLXSessionHeaders = async () => ({
  "chat.headers": async (input, output) => {
    output.headers ||= {};
    const providerID = mtplxProviderID(input);
    if (providerID && providerID !== "mtplx") return;
    output.headers["x-mtplx-client"] = "opencode";
    if (input?.sessionID) {
      output.headers["x-mtplx-session-id"] = String(input.sessionID);
    }
  },
  "chat.params": async (input, output) => {
    const providerID = mtplxProviderID(input);
    if (providerID && providerID !== "mtplx") return;
    // OpenCode otherwise injects a 32k output ceiling even when the configured
    // model advertises a larger native context. Omit the field so MTPLX owns
    // the uncapped generation contract and stops naturally at EOS.
    output.maxOutputTokens = undefined;
  }
});
export default MTPLXSessionHeaders;
