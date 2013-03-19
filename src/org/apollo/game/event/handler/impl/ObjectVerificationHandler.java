package org.apollo.game.event.handler.impl;

import org.apollo.game.event.handler.EventHandler;
import org.apollo.game.event.handler.EventHandlerContext;
import org.apollo.game.event.impl.ObjectActionEvent;
import org.apollo.game.model.Player;
import org.apollo.game.model.Position;
import org.apollo.game.model.World;
import org.apollo.game.model.obj.DynamicGameObject;
import org.apollo.game.model.obj.StaticGameObject;
import org.apollo.game.model.region.Chunk;

/**
 * An {@link EventHandler} for the {@link ObjectActionEvent}'s.
 * @author Steve
 */
public final class ObjectVerificationHandler extends EventHandler<ObjectActionEvent> {

	/**
	 * Check if the x and y are the same.
	 * @param position The position.
	 * @param other The other position.
	 * @return True if equal, false if otherwise.
	 */
	public boolean equals(Position position, Position other) {
		if (position.getX() != other.getX())
			return false;
		if (position.getY() != other.getY())
			return false;
		return true;
	}

	@Override
	public void handle(EventHandlerContext ctx, Player player, ObjectActionEvent event) {
		boolean found = false;

		// manual objects here. some reason its not in the region
		if (event.getId() == 2295)
			if (event.getPosition().equals(new Position(2474, 3435)))
				return;

		final Chunk chunk = World.getWorld().getRegionManager().getChunkByPosition(event.getPosition());
		for (final DynamicGameObject object : chunk.getObjects())
			if (object.getId() == event.getId())
				if (equals(object.getPosition(), event.getPosition())) {
					found = true;
					break;
				}
		if (!found)
			for (final StaticGameObject object : player.getRegion().getObjects())
				if (object.getId() == event.getId())
					if (equals(object.getPosition(), event.getPosition())) {
						found = true;
						break;
					}
		if (!found)
			ctx.breakHandlerChain();
	}
}