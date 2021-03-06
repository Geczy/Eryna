package org.apollo.game.model.inter.trade;

import org.apollo.game.model.Player;
import org.apollo.game.model.inter.InterfaceAdapter;

/**
 * An {@link InterfaceAdapter} which listens for a trade interface closed.
 * @author Steve
 */
public final class TradeInterfaceListener extends InterfaceAdapter {

	/**
	 * The trade session.
	 */
	private final TradeSession session;

	/**
	 * Creates a new trade interface listener.
	 * @param session The trade session.
	 */
	public TradeInterfaceListener(TradeSession session) {
		this.session = session;
	}

	@Override
	public void interfaceClosed(Player player, boolean manually) {
		final TradeSession.State ats = session.getAcquaintance().getSettings().getTradeSession().getState();
		final TradeSession.State pts = session.getState();
		if (pts != TradeSession.State.DECLINING)
			if (!(ats == TradeSession.State.AWAITING_ACCEPTANCE && pts == TradeSession.State.AWAITING_ACCEPTANCE)
					|| !(ats == TradeSession.State.AWAITING_COMFORMATION && pts == TradeSession.State.AWAITING_COMFORMATION))
				session.decline();
		session.getPlayer().getSettings().setTradeSession(null);
		session.getAcquaintance().getSettings().setTradeSession(null);
		session.getAcquaintance().getInterfaceSet().removeListener();
		session.getAcquaintance().getInterfaceSet().close();
	}
}