/*
 * MegaMek - Copyright (C) 2005 Ben Mazur (bmazur@sev.org)
 * Copyright (c) 2024 - The MegaMek Team. All Rights Reserved.
 *
 * This file is part of MegaMek.
 *
 * MegaMek is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * MegaMek is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with MegaMek. If not, see <http://www.gnu.org/licenses/>.
 */

package megamek.client.event;

/**
 * This adapter class provides default implementations for the methods described
 * by the <code>BoardViewListener</code> interface.
 * <p>
 * Classes that wish to deal with <code>BoardViewEvent</code>s can extend
 * this class and override only the methods which they are interested in.
 * </p>
 *
 * @see BoardViewListener
 * @see BoardViewEvent
 */
public class BoardViewListenerAdapter implements BoardViewListener {

    /**
     * Sent when user clicks, double clicks or drags hex. The default behavior
     * is to do nothing.
     *
     * @param b an event
     */
    @Override
    public void hexMoused(BoardViewEvent b) {
    }

    /**
     * Sent when BoardView 'cursor' is set to Hex. The default behavior is to do
     * nothing.
     *
     * @param b an event
     */
    @Override
    public void hexCursor(BoardViewEvent b) {
    }

    /**
     * Sent when BoardView 'cursor' is set to Hex. The default behavior is to do
     * nothing.
     *
     * @param b an event
     */
    @Override
    public void boardHexHighlighted(BoardViewEvent b) {
    }

    /**
     * Sent when Hex is selected. The default behavior is to do nothing.
     *
     * @param b an event
     */
    @Override
    public void hexSelected(BoardViewEvent b) {
    }

    /**
     * Sent when firstLOS is set. The default behavior is to do nothing.
     *
     * @param b an event
     */
    @Override
    public void firstLOSHex(BoardViewEvent b) {
    }

    /**
     * Sent when secondLOS is set. The default behavior is to do nothing.
     *
     * @param b an event
     */
    @Override
    public void secondLOSHex(BoardViewEvent b) {
    }

    /**
     * Sent when moving units is finished. The default behavior is to do
     * nothing.
     *
     * @param b an event
     */
    @Override
    public void finishedMovingUnits(BoardViewEvent b) {
    }

    /**
     * Sent when Unit is selected. The default behavior is to do nothing.
     *
     * @param b an event
     */
    @Override
    public void unitSelected(BoardViewEvent b) {
    }

}
